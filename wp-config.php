<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_kprojektas');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'N wVoN_tDm1a&04)ljti46[:uKw1s-KM-4CdAI|]W{TQ?F2y+2?v3LBn_gDQC.R_');
define('SECURE_AUTH_KEY',  '2b:j=z=IUHd|x<AB|EwQb3Jm{l{v*wdKPMR{S3_saSW6D[efL[@Se~CT*ZBi<9Os');
define('LOGGED_IN_KEY',    'U ?V6hd$=KudK~cvkQErf`j/<h6g>ykl:w}]/eES* rvjr^Vn8}qG~2dqA-@,jh}');
define('NONCE_KEY',        '; q{=_DxE>(1uj/ej~K^!La9/Sce-VzOzEVj~F%Xlwnju>#PJ.~l<BXR{*/;X_5y');
define('AUTH_SALT',        '<SUX#Bc*#w|R^EC8%eb@~nd^wDN|KAB06/V=Zn|$DIp`:G5a`)36M )cW_VK1%e1');
define('SECURE_AUTH_SALT', '[8PMM{YZ.z^pY{zEW[J(i_zP]By9RO){MdetO,.xN?_5+)e`OVw/4 IQBLZ2Y%P6');
define('LOGGED_IN_SALT',   ')aT{NVlW$Y(<^lP~$S-!6=<kXM|p$Ms|S~@u[`,7M31oQ0OA@q/$j%^PGdhik`/e');
define('NONCE_SALT',       '&IBJO_6U&H$X^y+yBzXu0yhIQM1uP_w6&tc/bDn5mHjtncZj/%Js75;]F[)~d;ZS');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
