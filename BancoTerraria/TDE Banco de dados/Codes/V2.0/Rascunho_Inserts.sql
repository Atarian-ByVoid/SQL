
/*Sunset Inserts*/
insert
into Sunset(Blood_Tip_Sunset,Atk,Def,Pv,Mp,Money_Platinum)
values('Blood_Of_The_Army_Of_Chaos','230','61','500','220','2');

insert 
into Sunset_Class(Blood_Tip_Sunset,Sunset_Class)
values('Blood_Of_The_Army_Of_Chaos','Summoner_Class');

insert 
into Sunset_Class_Second(Blood_Tip_Sunset,Sunset_Class)
values('Blood_Of_The_Army_Of_Chaos','Mage_Class');

insert
into Sunset_Equippable(Blood_Tip_Sunset,Sunset_Equippable_All)
values('Blood_Of_The_Army_Of_Chaos','5');

insert
into Sunset_Cosmetic(Blood_Tip_Sunset,Equippable_Sunset_Cosmetic_1,Equippable_Sunset_Cosmetic_2,Equippable_Sunset_Cosmetic_3 ,Equippable_Sunset_Cosmetic_4 ,Equippable_Sunset_Cosmetic_5)
values('Blood_Of_The_Army_Of_Chaos','Fleting_Celestial_Cuffs','Hallowed Hood','Hallowed Plate','Hallowed Greaves','Hasty Charm Myths');

insert
into Sunset_Equipments(Equippable_Sunset_Equipments_1,Equippable_Sunset_Equipments_2,Equippable_Sunset_Equipments_3,Equippable_Sunset_Equipments_4,Equippable_Sunset_Equipments_5,Blood_Tip_Sunset)
values('Meacing Moon Charm','Meacing Pygmy Necklace','Arcane Squires Shield','Guarding Blindfold','Brist Angel Wings','Blood_Of_The_Army_Of_Chaos');

insert
into Sunset_Armor(Equippable_Sunset_Armor_1,Equippable_Sunset_Armor_2,Equippable_Sunset_Armor_3,Blood_Tip_Sunset)
values('Valhala Knights Helm','Valhala Knights Breatsplate','Valhala Knights Greaves','Blood Of The Army Of_Chaos');

insert 
into Sunset_Weapons(Equippable_Sunset_Weapons_1,Equippable_Sunset_Weapons_2,Equippable_Sunset_Weapons_3,Blood_Tip_Sunset)
values('Shody Flying Dragon','Forceful Aerial Lane','Spectre Hamaxe','Blood_Of_The_Army_Of_Chaos');

insert
into Sunset_Mount_Pets_Hook(Equippable_Sunset_Mount_Pets_Hook_1,Equippable_Sunset_Mount_Pets_Hook_2,Equippable_Sunset_Mount_Pets_Hook_3,Equippable_Sunset_Mount_Pets_Hook_4,Blood_Tip_Sunset)
values('Cosmic Car Key','Creeper Egg','Full Moon Squeaky','Lunar Hook Toy','Blood_Of_The_Army_Of_Chaos');


/* Midnight Insert*/

insert
into Midnight(Blood_Tip_Midnight,Atk,Def,Pv,Mp,Money_Gold)
values('Blood_Of_The_Gods_Of_War','280','73','500','200','30');

insert
into Midnight_Class_Warrior(Blood_Tip_Midnight,Midnight_Class)
values('Blood_Of_The_Gods_Of_War','Warrior_Class');

insert 
into Midnight_Equippable(Midnight_Equippable_All,Blood_Tip_Midnight)
values('5','Blood_Of_The_Gods_Of_War');

insert
into Midnight_Cosmetic(Equippable_Midnight_Cosmetic_1,Equippable_Midnight_Cosmetic_2,Equippable_Midnight_Cosmetic_3,Equippable_Midnight_Cosmetic_4,Equippable_Midnight_Cosmetic_5,Blood_Tip_Midnight)
values('Mage Hat','Tax Collector Clothes','Sailors Pants','Winters Cape','Guarding Blindfold','Blood_Of_The_Gods_Of_War'); 

insert
into Midnight_Equipments(Equippable_Midnight_Equipments_1,Equippable_Midnight_Equipments_2,Equippable_Midnight_Equipments_3,Equippable_Midnight_Equipments_4,Equippable_Midnight_Equipments_5,Blood_Tip_Midnight)
values('Philosofical Stone','Blizzard In Bottle','Titan Gloves','Quiver','Magma Skull','Blood_Of_The_Gods_Of_War');

insert
into Midnight_Armor(Equippable_Midnight_Armor_1,Equippable_Midnight_Armor_2,Equippable_Midnight_Armor_3,Blood_Tip_Midnight)
values('Squires Helm','Squires Plating','Squires Greaves','Blood_Of_The_Gods_Of_War');

insert
into Midnight_Weapons(Equippable_Midnight_Weapons_1,Equippable_Midnight_Weapons_2,Equippable_Midnight_Weapons_3,Blood_Tip_Midnight)
values('Pointy Keybrand','Orichalcum Waraxe','Ruthless Halloweed Reapeater','Blood_Of_The_Gods_Of_War');

insert 
into Midnight_Mount_Pets_Hook(Equippable_Midnight_Mount_Pets_Hook_1,Equippable_Midnight_Mount_Pets_Hook_2,Equippable_Midnight_Mount_Pets_Hook_3,Equippable_Midnight_Mount_Pets_Hook_4,Blood_Tip_Midnight)
values('Cosmic Car Key','Ball O Fuse Wire','Creeper Egg','Dual Hook','Blood_Of_The_Gods_Of_War');

/*Lunatic Insert*/

insert 
into lunatic_Occultist(Lunatic,Pv,Def,Physical,Dark_Fire_Ball,Ice_Fog,FireBall,Radius_Efere,Ancient_Light,Ancient_Disgrace)
values('Lunatic','32000','42','50','36','70','60','90','120','30');

insert
into lunatic_Occultist_Drop(Drop_Occultist_1,Drop_Occultist_2,Drop_Occultist_3,Drop_Occultist_4,Lunatic)
values('Ancient Manipulator 1','Lunatics Mask 1','Lunatics Trophy 1','Advanceded Healing 30','Lunatic');

/*Pilares evento da lua insert*/

insert
into Pillars_Tips(Solar,Stardust,Nebulla,Vortex,Pillar_Tips_4,Lunatic)
values(1,1,1,1,4,'Lunatic');

/* Pilares evento da lua(Solar Pilar) insert*/

insert
into Solar_pilar(Solar,Pv)
values(1,20000);

insert
into Solar_pilar_Drops(Solar_Fragments,Solar)
values(45,1);

insert
into Solar_pilar_Minions_Seliano(Pv,Atk,Def,Solar)
values(900,90,34,1);

insert
into Solar_pilar_Minions_Drakanian(Pv,Atk,Def,Solar)
values(100,80,28,1);

insert 
into Solar_pilar_Minions_RiverGorite(Pv,Atk,Def,Solar)
values(600,90,26,1);

insert
into Solar_pilar_Minions_Sroller(Pv,Atk,Def,Solar)
values(700,188,34,1);

insert
into Solar_pilar_Minions_Crawltipede(Pv,Atk,Def,Solar)
values(100,150,0,1);

insert
into Solar_pilar_Minions_Drakomire(Pv,Atk,Def,Solar)
values(800,550,32,1);

insert
into Solar_pilar_Minions_DrakomireRider(Pv,Atk,Def,Solar)
values(800,80,28,1);

/* Pilares evento da lua(Nebulla Pilar) insert*/

insert
into Nebulla_pilar(Nebulla,Pv)
values(1,20000);

insert
into Nebulla_pilar_Drops(Nebulla_Fragments,Nebulla)
values(45,1);

insert
into Nebulla_pilar_Minions_BrainSucchlhes(Pv,Atk,Def,Nebulla)
values(330,70,34,1);

insert
into Nebulla_pilar_Minions_EvolutionBeast(Pv,Atk,Def,Nebulla)
values(850,190,46,1);

insert
into Nebulla_pilar_Minions_NebullaFloates(Pv,Atk,Def,Nebulla)
values(1300,205,20,1);

insert
into Nebulla_pilar_Minions_Predictos(Pv,Atk,Def,Nebulla)
values(200,200,30,1);

/* Pilares evento da lua(Vortex Pilar) insert*/

insert
into Vortex_pilar(Vortex,Pv)
values(1,20000);

insert
into Vortex_pilar_Drops(Nebulla_Fragments,Vortex)
values(45,1);

insert 
into Vortex_pilar_Minions_AlienHornet(Pv,Atk,Def,Vortex)
values(5000,25,20,1);

insert
into Vortex_pilar_Minions_AlienLarva(Pv,Atk,Def,Vortex)
values(200,50,46,1);

insert
into Vortex_pilar_Minions_AlienQueen(Pv,Atk,Def,Vortex)
values(1000,220,44,1);

insert 
into Vortex_pilar_Minions_StormDiver(Pv,Atk,Def,Vortex)
values(800,250,40,1);

insert
into Vortex_pilar_Minions_Vortexian(Pv,Atk,Def,Vortex)
values(700,90,34,1);

/* Pilares evento da lua(Stardust Pilar) insert*/

insert
into Stardust_pilar(Stardust,Pv)
values(1,20000);

insert
into Stardust_pilar_Drops(Stardust_Fragments,Stardust)
values(45,1);

insert
into Stardust_pilar_Minions_FlowIvander(Pv,Atk,Def,Stardust)
values(1500,190,38,1);

insert
into Stardust_pilar_Minions_MilhwayWeaver(Pv,Atk,Def,Stardust)
values(1200,80,10,1);

insert
into Stardust_pilar_Minions_StarCell(Pv,Atk,Def,Stardust)
values(300,120,50,1);

insert
into Stardust_pilar_Minions_StarGazer(Pv,Atk,Def,Stardust)
values(200,80,34,1);

insert
into Stardust_pilar_Minions_Twinkle(Pv,Atk,Def,Stardust)
values(200,80,10,1);

insert
into Stardust_pilar_Minions_TwinklePopper(Pv,Atk,Def,Stardust)
values(800,80,10,1);

/*Moon Lord inserts*/

insert
into MoonLord(Moon,Pv,Atk,Def)
values(1,120000,1010,160);

insert
into MoonLord_Drop(MoonLord_Drop_1,MoonLord_Drop_2,MoonLord_Drop_3,MoonLord_Drop_4,Moon)
values('Greater_Healing_Potion_30','Super_Healing_Potion_40','PortalGun','Meoware','1');

/*Moon Lord parts insert */
insert
into MoonLord_Parts_Core(Pv,Def,Moon)
values(50000,70,1);

insert 
into MoonLord_Parts_Head(PhantasmalDeathray,Pv,Def,PhantasmalBolt,Moon)
values(150,45000,50,60,1);

insert
into MoonLord_Parts_Hand(Contact_OpenEye_Socket,PhantasmalSphere,Pv,Def,PhantasmalEye,PhantasmalBolt,Moon)
values(80,100,25000,40,60,60,1);


/*              FIM               */

/*        INSERTS  FIM    */


