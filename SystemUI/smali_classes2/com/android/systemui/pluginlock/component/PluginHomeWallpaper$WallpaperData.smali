.class public final Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mHints:Landroid/app/SemWallpaperColors;

.field public mIntelligentCrops:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mRect:Landroid/graphics/Rect;

.field public mType:I

.field public mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 3
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mIntelligentCrops:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 7
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 8
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>()V

    return-void
.end method
