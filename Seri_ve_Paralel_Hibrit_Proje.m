
% Tasarım Kısıtları Başlangıç Parametreleri
clear; clc; close all;

% 1. Motor Parametreleri
ICE_Volume_L = 1.6;     % İçten Yanmalı Motor Hacmi (Litre) 
EM_Power_kW = 50;       % Elektrik Motoru Maksimum Gücü (kW) 
EM_Power_W = EM_Power_kW * 1000; % Watt cinsinden

% 2. Batarya Parametreleri
SOC_initial = 0.60;     % Başlangıç Şarj Durumu (%60) 

% 3. Çevresel ve Genel Parametreler

disp('Proje 20: Temel tasarım kısıtları Workspace''e başarıyla yüklendi!');
disp('Sıradaki adım: Simulink Powertrain Blockset inşası.');
%  Araç Dinamiği Parametreleri ---
Veh_Mass = 1600;       % Araç Kütlesi (kg) 
Veh_FrontalArea = 2.4; % Aracın Ön Kesit Alanı (m^2)
Veh_Cd = 0.32;         % Aerodinamik Sürüklenme (Rüzgar Direnci) Katsayısı
Veh_Crr = 0.015;       % Tekerlek Yuvarlanma Direnci Katsayısı
Air_Density = 1.225;   % Hava Yoğunluğu (kg/m^3)
Wheel_Radius = 0.33;   % Tekerlek Yarıçapı (m)

% Batarya Parametreleri ---
Bat_Capacity_Ah = 30;      % Batarya Kapasitesi (Ah) 
Bat_Voltage_V = 250;       % Nominal Voltaj (V)

% Paralel HEV Motor Parametreleri ---
ICE_MaxPower_kW = 75;      % 1.6L motor için yaklaşık güç (kW)
EM_MaxPower_kW = 50;       % 50kW Elektrik Motoru
ICE_MaxSpeed_rpm = 6000;   % İYM maksimum devri
EM_MaxSpeed_rpm = 12000;   % EM maksimum devri
Final_Drive_Ratio = 3.5;   % Diferansiyel dişli oranı