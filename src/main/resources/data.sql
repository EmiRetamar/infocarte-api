-- Agregamos los roles
INSERT INTO public.roles(role_name) VALUES('ADMIN');
INSERT INTO public.roles(role_name) VALUES('ALUMNO');
INSERT INTO public.roles(role_name) VALUES('PROFESOR');

-- Agregamos usuarios
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$wzqz/gJMaySr4Vb7LOWx8eMQDt57fy5MuGVqaO1r58HNdcmYX/wd6', 'admin', 'Admin', 'Admin', 'a@a.com', 'https://www.koolbadges.co.uk/images/thumbnails/i-love-admin-badges-200x200.jpg');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$dhqE2Ac0Z.ZKTuzf3I1ugeyESlKYtAIwlt48euY8yTSu8wNxqazXO', 'alumno', 'John', 'Doe', 'john@hotmail.com', 'https://assets.trome.pe/files/ec_article_multimedia_gallery/uploads/2018/04/17/5ad609d27c1a7.jpeg');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$dhqE2Ac0Z.ZKTuzf3I1ugeyESlKYtAIwlt48euY8yTSu8wNxqazXO', 'alumno2', 'Juan', 'Bgood', 'juan@hotmail.com', 'https://assets1.ignimgs.com/vid/thumbnails/2013/07/22/06979f3176b286ef824c915fd8c368f2-1374469069/frame_0000.jpg');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$dhqE2Ac0Z.ZKTuzf3I1ugeyESlKYtAIwlt48euY8yTSu8wNxqazXO', 'alumno3', 'Emiliano', 'Retamar', 'emi@hotmail.com', 'https://vignette.wikia.nocookie.net/horadeaventura/images/7/7e/Finn_with_bionic_arm-0.png/revision/latest?cb=20170920211014&path-prefix=es');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$dhqE2Ac0Z.ZKTuzf3I1ugeyESlKYtAIwlt48euY8yTSu8wNxqazXO', 'alumno4', 'Felipe', 'Arana', 'feli@hotmail.com', 'https://vignette.wikia.nocookie.net/horadeaventura/images/f/fb/JakeRJS.png/revision/latest?cb=20140526012014&path-prefix=es');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$dhqE2Ac0Z.ZKTuzf3I1ugeyESlKYtAIwlt48euY8yTSu8wNxqazXO', 'alumno5', 'Cristian', 'Gallardo', 'cris.gallardo@hotmail.com', 'http://2.bp.blogspot.com/-sVhnIDevbLI/UawTpxZr_pI/AAAAAAAACI8/j5AiuldNMhE/s1600/rigboon.bmp');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$wzqz/gJMaySr4Vb7LOWx8eMQDt57fy5MuGVqaO1r58HNdcmYX/wd6', 'profesor', 'Hernecio', 'Villarica', 'villarica@info.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Belmans_in_labo.jpg/275px-Belmans_in_labo.jpg');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$wzqz/gJMaySr4Vb7LOWx8eMQDt57fy5MuGVqaO1r58HNdcmYX/wd6', 'profesor2', 'Ron', 'Damon', 'don.ramon@info.com', 'https://cdne.diariocorreo.pe/thumbs/uploads/img/2017/07/06/dia-del-maestro-el-dia-que--jpg_604x0.jpg');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$wzqz/gJMaySr4Vb7LOWx8eMQDt57fy5MuGVqaO1r58HNdcmYX/wd6', 'profesor3', 'Maria', 'Fernandez', 'maria.fernandez@info.com', 'http://www.elperiodicodelafresneda.es/wp-content/uploads/2017/12/PROFESORA.jpg');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$wzqz/gJMaySr4Vb7LOWx8eMQDt57fy5MuGVqaO1r58HNdcmYX/wd6', 'profesor4', 'Don', 'Ramon', 'ramon@info.com', 'https://cdne.diariocorreo.pe/thumbs/uploads/img/2017/07/06/dia-del-maestro-el-dia-que--jpg_604x0.jpg');
INSERT INTO public.users (active, password, username, name, lastname, email, photo) VALUES (true, '$2a$10$wzqz/gJMaySr4Vb7LOWx8eMQDt57fy5MuGVqaO1r58HNdcmYX/wd6', 'profesor5', 'Elizabeth', 'Perez', 'elizabeth@info.com', 'http://www.elperiodicodelafresneda.es/wp-content/uploads/2017/12/PROFESORA.jpg');

-- Establecemos roles
INSERT INTO public.users_roles(user_id, role_id) VALUES ('1', '1');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('2', '2');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('3', '2');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('4', '2');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('5', '2');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('6', '2');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('7', '3');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('8', '3');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('9', '3');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('10', '3');
INSERT INTO public.users_roles(user_id, role_id) VALUES ('11', '3');

-- Agregamos carteleras
INSERT INTO public.billboards(created_at, title, description, image, user_id) VALUES(current_timestamp, 'Cartelera 1ero', 'Los newbies', 'https://noticiasdemundogaturrinconwalter.files.wordpress.com/2011/12/pizarron.png', '1');
INSERT INTO public.billboards(created_at, title, description, image, user_id) VALUES(current_timestamp, 'Cartelera 2do', 'Los walleros', 'https://republica.com.uy/wp-content/uploads/2016/06/loro-azul.jpg', '1');
INSERT INTO public.billboards(created_at, title, description, image, user_id) VALUES(current_timestamp, 'Cartelera 3ero', 'Los resistentes', 'https://www.w3schools.com/w3css/img_lights.jpg', '1');
INSERT INTO public.billboards(created_at, title, description, image, user_id) VALUES(current_timestamp, 'Cartelera 4to', 'Los tranka', 'https://sample-videos.com/img/Sample-jpg-image-500kb.jpg', '1');
INSERT INTO public.billboards(created_at, title, description, image, user_id) VALUES(current_timestamp, 'Cartelera 5to', 'Los heroes', 'https://www.wonderplugin.com/videos/demo-image0.jpg', '1');
INSERT INTO public.billboards(created_at, title, description, image, user_id) VALUES(current_timestamp, 'Informacion general', 'Informacion sobre horarios de las materias, inicio de cursada, examenes, finales, etc...', 'https://www.lovesignco.com/wp-content/uploads/Interior-example-image.jpg', '1');
INSERT INTO public.billboards(created_at, title, description, image, user_id) VALUES(current_timestamp, 'Ofertas laborales', 'Ofertas de empleo de diferentes empresas relacionadas con la tecnologia', 'https://singularityhub.com/wp-content/uploads/2018/07/billboard-blank-outdoor-advertising-poster-night_1622x912_shutterstock_434071942.jpg', '1');
INSERT INTO public.billboards(created_at, title, description, image, user_id) VALUES(current_timestamp, 'Eventos', 'Eventos de la Facultad de Informatica', 'https://img.freepik.com/psd-gratis/diseno-fondo-abstracto_1297-87.jpg?size=626&ext=jpg', '1');

-- Agregamos publicaciones
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('1', true, current_timestamp, 'Horarios de primero', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Horarios 1', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('1', true, current_timestamp, 'Aprobaron casi todos', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados Adp', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('1', true, current_timestamp, 'Los felicito', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados Arq', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('1', true, current_timestamp, 'Volve en febrero', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados Org', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('2', true, current_timestamp, 'Horarios de segundo', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Horarios 2', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('2', true, current_timestamp, 'Resultados parcial 1era fecha', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados Ibd', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('2', true, current_timestamp, 'Muy bien !', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados Ing1', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('2', true, current_timestamp, 'Falto t de n', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados Ayed', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('3', true, current_timestamp, 'Horarios de tercero', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Horarios 3', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('3', true, current_timestamp, 'Probabilidades de aprobar', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados Mate 3', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('3', true, current_timestamp, 'Recursada nro 1920194', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados Redes', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('3', true, current_timestamp, 'Los mas copados', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Resultados TTPS Java', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('4', true, current_timestamp, 'Horarios de cuarto', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Horarios 4', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('4', true, current_timestamp, 'La continuacion de ISO', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Sistemas Operativos', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('4', true, current_timestamp, 'Aca se pone bueno', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Laboratorio de Software', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('5', true, current_timestamp, 'Horarios de quinto', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Horarios 5', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('5', true, current_timestamp, 'Interesante', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Diseño de Experiencia de Usuario', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('5', true, current_timestamp, 'Por fin la tesis !!!', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Tesina de Licenciatura en Informática', NULL, '1');
INSERT INTO public.posts(billboard_id, comments_enabled, created_at, description, image, title, updated_at, user_id) VALUES('6', true, current_timestamp, 'No habra clases por temas administrativos de la facultad', 'https://www.mollmanoutdoor.com/wp-content/uploads/2016/08/happy-billboard-min.jpg', 'Aviso importante', NULL, '1');

-- Agregamos comentarios
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('Genial! Al fin publican los horarios.', '1', '3', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('Aprobeeee !', '2', '3', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('Uh tengo que recursar', '2', '3', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('Cuando empieza la materia?', '6', '2', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('El proximo lunes', '6', '8', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('Aprobeee', '7', '4', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('APROBAMOS TTPS !!!', '12', '4', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('APROBAMOS TTPS !!!', '12', '5', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('Cuando es el recuperatorio?', '10', '6', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('El viernes, 8hs', '10', '10', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('Traigan DNI', '10', '9', current_timestamp);
INSERT INTO public.comments(comment, post_id, user_id, created_at) VALUES('Ya tengo la tesis para presentar', '18', '3', current_timestamp);

-- Agregamos seguidores a carteleras
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('2', '1');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('2', '2');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('2', '3');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('2', '4');
--INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('2', '6');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('3', '2');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('3', '3');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('3', '5');
--INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('3', '6');
--INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('3', '8');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('4', '1');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('4', '2');
--INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('4', '6');
--INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('4', '7');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('5', '2');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('5', '3');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('5', '4');
--INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('5', '6');
--INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('5', '8');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('6', '3');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('6', '4');
INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('6', '5');
--INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('6', '7');
-- INSERT INTO public.followed_billboards(user_id, billboard_id) VALUES('6', '8');
