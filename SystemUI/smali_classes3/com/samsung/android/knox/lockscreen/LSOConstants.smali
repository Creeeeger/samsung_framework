.class public final Lcom/samsung/android/knox/lockscreen/LSOConstants;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_LSO_CONFIG_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

.field public static final ADMIN_LOCKSCREEN_WALLPAPER_DIR:Ljava/lang/String; = "/data/system/enterprise/lso"

.field public static final ADMIN_LOCKSCREEN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final ADMIN_LOCKSCREEN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

.field public static final CUSTOM_LAYER:I = 0x2

.field public static final DEFAULT_ALPHA_LEVEL:F = 1.0f

.field public static final DEFAULT_LAYER:I = 0x1

.field public static final EMERGENCY_PHONE_LAYER:I = 0x3

.field public static final ENTERPRISE_PRIVATE_DIR:Ljava/lang/String; = "/data/system/enterprise"

.field public static final ERROR_BAD_STATE:I = -0x6

.field public static final ERROR_FAILED:I = -0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ALLOWED:I = -0x1

.field public static final ERROR_NOT_READY:I = -0x5

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_KNOX_WALLPAPER_ENABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_WALLPAPER_ENABLED_INTERNAL"

.field public static final FEATURE_ALL:I = -0x1

.field public static final FEATURE_ANY:I = 0x0

.field public static final FEATURE_INVISIBLE_OVERLAY:I = 0x1

.field public static final FEATURE_WALLPAPER:I = 0x2

.field public static final LOCKSCREEN_WALLPAPER_DIR:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d"

.field public static final LSO_FEATURE_ALL:Ljava/lang/String; = "LOCKSCREEN_ALL_FEATURE"

.field public static final LSO_FEATURE_ANY:Ljava/lang/String; = "LOCKSCREEN_ANY_FEATURE"

.field public static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field public static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field public static final LSO_PRIVATE_DIR:Ljava/lang/String; = "/data/system/enterprise/lso"

.field public static final MAX_SUPPORTED_LAYER:I = 0x3

.field public static final RESET_ALL_LAYER:I = 0x0

.field public static final SETTINGS_MDM_WALLPAPER_ENABLE_INTERNAL:Ljava/lang/String; = "mdm_wallpaper_enabled"

.field public static final TAG:Ljava/lang/String; = "LSO"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLSOFeatureName(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string v0, "Unknown "

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "LOCKSCREEN_WALLPAPER"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "LOCKSCREEN_OVERLAY"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "LOCKSCREEN_ANY_FEATURE"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "LOCKSCREEN_ALL_FEATURE"

    .line 29
    .line 30
    return-object p0
.end method

.method public static getLayerName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string v0, "LAYER"

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "EMERGENCY_PHONE_LAYER"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "CUSTOM_LAYER"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "DEFAULT_LAYER"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "RESET_ALL_LAYER"

    .line 29
    .line 30
    return-object p0
.end method
