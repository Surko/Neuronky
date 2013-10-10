% x-ova aj y-ove suradnice pojdu od -20 do 20 po 0.3 hlavne kvoli tomu
% aby som nedosiahol bod [0,0], v ktorom by nebola funkcia definovana =>
% nachadzala by sa tam diera
x = -20:0.3:20;
y = x;

% vytvorime mesh => 2 dimenzionalna matica z hodnotami ktore budeme dosadzovat
% do funkcie
[meshX,meshY] = meshgrid(x,y);

%%
% Cast s renderovanim videa. Iba na skusku
% pocet framov ktore chceme vykreslit
% numframes = 120;

% nastavenie grafickeho kontextu
% set(gca,'NextPlot','replacechildren');

% nastavenie kontajneru v ktorom ukladame framy
% frames(120) = struct('cdata',[],'colormap',[]);

% nastavenie axis aby sa nam nemenili dlzky suradnicovych sustav kazdym framom
% axis([0 120 0 120 -2 2])

% doplnenie pozretia z vrchu aj zo spodu


% Vytvorenie videa 
% for i = 14:numframes; meshZ = sin(7.*(7./i).*sqrt(meshX.^2 + meshY.^2))./sqrt(meshX.^2+meshY.^2);
%     surf(meshZ);
%     frames(i)= getframe();
% end

% Ulozenie videa pod urcitym menom s danou kompresiou
% movie2avi(frames,'waterwaves.avi','compression', 'FFDS', 'quality', 100)

%%
% Vytvorenie z-ovej suradnice pre vlnu, ktora je stale rovnaka.
meshZ=sin(sqrt(meshX.^2 + meshY.^2));
surf(meshX,meshY,meshZ);
% Ulozenie takehoto grafu pod danym menom
saveas(gcf, 'Without','jpg');

%%
% Vytvorenie z-ovej suradnice dosadenim hodnot ulozenych v meshX a meshY
% Vyuzivame funkciu sinus so vzdialenostou od pociatku, aby sme vytvorili
% vlny vytvorene od pociatku. Takato funkcia by vytvorila vlny s rovnakymi
% amplitudami. Na postupne znizovanie vln musime do funkcie este zahrnut
% predelenie nejakou hodnotou ktora sa zvysuje od stredu => vzdialenostou
% od stredu.
meshZ=sin(sqrt(meshX.^2 + meshY.^2))./sqrt(meshX.^2+meshY.^2);
% Na vykreslenie grafu pouzijem funkciu surf, ktora podla zadanych
% parametrov vygeneruje graf.
surf(meshX,meshY,meshZ);
% Hodnoty sluzia na prenastavenie kamery (0,90) = Pohlad z vrchu
az = 0;
el = 90;
% Funkcia na zmenu kamery
view(az, el);

% Funkcia ktora uklada obrazok s grafom z pohladu zhora do suboru
saveas(gcf, 'ZhoraGraf', 'jpg');

% Hodnoty sluzia na prenastavenie kamery (-37.5, 30) = Default nastavenie
% pohladu
az = -37.5;
el = 30;
% Funkcia na zmenu kamery
view(az, el);

% Funkcia ktora uklada obrazok s grafom z pohladu sikmo zhora do suboru
saveas(gcf, 'SikmoHoreGraf', 'jpg');

% Hodnoty sluzia na prenastavenie kamery (-37.5, 30) = Default nastavenie
% pohladu
az = -37.5;
el = -30;
% Funkcia na zmenu kamery
view(az, el);

% Funkcia ktora uklada obrazok s grafom z pohladu sikmo zdola do suboru
saveas(gcf, 'SikmoDoleGraf', 'jpg');
