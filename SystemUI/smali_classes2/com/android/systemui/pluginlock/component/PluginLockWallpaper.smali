.class public final Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sDualDisplayPlugin:Z = false

.field public static sScreenType:I = 0x0

.field public static sScreenTypeChanged:Z = false


# instance fields
.field public mHasData:Z

.field public mHintUpdatedSkip:Z

.field public mRecoverRequestedScreen:I

.field public final mWallpaperDataList:Ljava/util/List;

.field public mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

.field public mWholeRecoverRequired:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 13
    .line 14
    new-instance p2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 20
    .line 21
    new-instance p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    new-instance p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;-><init>(I)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-virtual {p2, p1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static getBitmap(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    instance-of p0, v1, Landroid/graphics/drawable/GradientDrawable;

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    .line 28
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/Canvas;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 36
    .line 37
    invoke-static {p1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v3, v3, p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, "getBitmap() unsupported "

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "PluginLockWallpaper"

    .line 68
    .line 69
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    return-object v0
.end method

.method public static getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "MULTIPLE=(.*):tilt"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    const-string p0, "no_matched_pkg_name"

    .line 32
    .line 33
    return-object p0
.end method

.method public static isCloneDisplayRequired()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    .line 1
    const-string v0, "PluginLockWallpaper"

    .line 2
    .line 3
    const-string v1, "apply()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getUpdateStyle()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getRecoverType()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 53
    .line 54
    check-cast p0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method

.method public final backupWallpaperSource(I)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string v0, "lockscreen_wallpaper_transparent"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    .line 7
    .line 8
    .line 9
    :goto_0
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "backupWallpaperSource() backupSource: "

    .line 15
    .line 16
    const-string v3, ", screenType:"

    .line 17
    .line 18
    const-string v4, "PluginLockWallpaper"

    .line 19
    .line 20
    invoke-static {v2, v1, v3, p1, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperSourceBackupValue(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final backupWallpaperType(I)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string v0, "lockscreen_wallpaper"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "lockscreen_wallpaper_sub"

    .line 7
    .line 8
    :goto_0
    const/4 v1, -0x1

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "backupWallpaperType() backupType: "

    .line 14
    .line 15
    const-string v3, ", screenType:"

    .line 16
    .line 17
    const-string v4, "PluginLockWallpaper"

    .line 18
    .line 19
    invoke-static {v2, v1, v3, p1, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const/4 v1, -0x3

    .line 25
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperTypeBackupValue(II)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final getScreenType()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    if-eqz v0, :cond_3

    .line 27
    .line 28
    move v0, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_3
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 31
    .line 32
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 33
    .line 34
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-le p0, v0, :cond_4

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_4
    move v0, v1

    .line 44
    :goto_3
    return v0
.end method

.method public final getWallpaperPath(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "getWallpaperPath() path: "

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "PluginLockWallpaper"

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "getWallpaperPath() path: null"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    mul-int/lit8 v1, v1, 0x14

    .line 31
    .line 32
    div-int/lit8 v1, v1, 0x64

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    return-object p0
.end method

.method public final isCustomPack(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p1, "com.samsung.custompack"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    const-string p1, "isCustomPack, ret:"

    .line 19
    .line 20
    const-string v0, "PluginLockWallpaper"

    .line 21
    .line 22
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return p0
.end method

.method public final isDynamicWallpaper()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 16
    .line 17
    const/4 v1, -0x2

    .line 18
    if-eq p0, v1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    const-string v1, "isDynamicWallpaper() screen:"

    .line 24
    .line 25
    const-string v2, ", ret:"

    .line 26
    .line 27
    const-string v3, "PluginLockWallpaper"

    .line 28
    .line 29
    invoke-static {v1, v0, v2, p0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return p0
.end method

.method public final isServiceWallpaper(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string p1, "SamsungUX.DW.FreshP"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    :cond_0
    if-nez v1, :cond_2

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 46
    :goto_1
    return p0
.end method

.method public final recoverWallpaperSource(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperSource(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    const-string/jumbo v2, "recoverWallpaperSource() backupWallpaperSource: "

    .line 24
    .line 25
    .line 26
    const-string v3, ", screenType:"

    .line 27
    .line 28
    const-string v4, "PluginLockWallpaper"

    .line 29
    .line 30
    invoke-static {v2, v0, v3, p1, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    const/4 v1, -0x2

    .line 36
    if-eq v0, v1, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq v0, v1, :cond_3

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    const-string p1, "lockscreen_wallpaper_transparent"

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const-string/jumbo p1, "sub_display_lockscreen_wallpaper_transparency"

    .line 47
    .line 48
    .line 49
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public final recoverWallpaperType(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperType(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    :goto_0
    const-string/jumbo v0, "recoverWallpaperType() backupType: "

    .line 22
    .line 23
    .line 24
    const-string v2, ", screenType:"

    .line 25
    .line 26
    const-string v3, "PluginLockWallpaper"

    .line 27
    .line 28
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, -0x3

    .line 32
    if-ne v1, v0, :cond_3

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-string p1, "lockscreen_wallpaper"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-string p1, "lockscreen_wallpaper_sub"

    .line 40
    .line 41
    :goto_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method public final reset(Z)V
    .locals 6

    .line 1
    const-string/jumbo v0, "reset() reconnectReq:"

    .line 2
    .line 3
    .line 4
    const-string v1, ", screenType:"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 11
    .line 12
    const-string v2, "PluginLockWallpaper"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    .line 45
    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 47
    iput-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    .line 57
    .line 58
    iget v3, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 59
    .line 60
    const/4 v4, -0x1

    .line 61
    const/4 v5, -0x2

    .line 62
    if-eq v3, v5, :cond_4

    .line 63
    .line 64
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-virtual {p0, v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    sget v3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    .line 87
    .line 88
    .line 89
    sget v3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType(I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iput v5, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 95
    .line 96
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 107
    .line 108
    iget-object v3, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 109
    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 133
    .line 134
    sget-boolean p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 135
    .line 136
    if-nez p1, :cond_4

    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    const-string/jumbo p1, "reset() onWallpaperUpdate will be called"

    .line 143
    .line 144
    .line 145
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 153
    .line 154
    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    .line 158
    .line 159
    .line 160
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    .line 161
    .line 162
    .line 163
    sput-boolean v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 164
    .line 165
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 166
    .line 167
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 168
    .line 169
    iput v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 170
    .line 171
    return-void
.end method

.method public final resetAll()V
    .locals 4

    .line 1
    const-string v0, "PluginLockWallpaper"

    .line 2
    .line 3
    const-string/jumbo v1, "resetAll()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    const-string/jumbo v3, "resetAll() onWallpaperUpdate will be called"

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 61
    .line 62
    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const-string v3, "WPaperChangedByDls"

    .line 71
    .line 72
    invoke-static {v0, v3, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    const-string v3, "WPaperChangedByDlsSub"

    .line 76
    .line 77
    invoke-static {v0, v3, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    .line 83
    .line 84
    .line 85
    sput-boolean v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 88
    .line 89
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 90
    .line 91
    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 93
    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 95
    .line 96
    return-void
.end method

.method public final setMultiPackWallpaperSource(I)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string v0, "lockscreen_wallpaper_transparent"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    .line 7
    .line 8
    .line 9
    :goto_0
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string/jumbo v3, "setMultiPackWallpaperSource() currentType: "

    .line 15
    .line 16
    .line 17
    const-string v4, ", screenType:"

    .line 18
    .line 19
    const-string v5, "PluginLockWallpaper"

    .line 20
    .line 21
    invoke-static {v3, v2, v4, p1, v5}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperTypeBackupValue(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperSourceBackupValue(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->getDefaultMultipackStyle(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/16 v4, 0x12

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroid/app/WallpaperManager;->getDefaultMultipackStyle(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-static {v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move p1, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    :goto_1
    move p1, v6

    .line 83
    :goto_2
    const-string v7, "isPreloadedMultiPack, main:"

    .line 84
    .line 85
    const-string v8, ", sub:"

    .line 86
    .line 87
    const-string v9, ", isPreload"

    .line 88
    .line 89
    invoke-static {v7, v3, v8, v1, v9}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1, p1, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    move p1, v4

    .line 98
    :goto_3
    if-nez p1, :cond_9

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v3, "CscFeature_LockScreen_ConfigDefaultWallpaperStyle"

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-virtual {v1, v3, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_4

    .line 126
    .line 127
    new-instance v3, Ljava/util/StringTokenizer;

    .line 128
    .line 129
    const-string v7, ";"

    .line 130
    .line 131
    invoke-direct {v3, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    :cond_4
    if-eqz p1, :cond_5

    .line 139
    .line 140
    if-eqz v7, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    move p1, v6

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    move p1, v4

    .line 151
    :goto_4
    const-string v1, "isSpecialEditionMultiPack, ret:"

    .line 152
    .line 153
    invoke-static {v1, p1, v5}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    if-nez p1, :cond_9

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_6

    .line 167
    .line 168
    const-string v1, "SamsungUX.DW.Stub"

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    move p1, v6

    .line 177
    goto :goto_5

    .line 178
    :cond_6
    move p1, v4

    .line 179
    :goto_5
    const-string v1, "isStubPack, ret:"

    .line 180
    .line 181
    invoke-static {v1, p1, v5}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    if-eqz p1, :cond_7

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_8

    .line 196
    .line 197
    const-string/jumbo p1, "setMultiPackWallpaperSource, custom"

    .line 198
    .line 199
    .line 200
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    if-eqz v2, :cond_a

    .line 204
    .line 205
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_8
    const-string/jumbo p1, "setMultiPackWallpaperSource, theme"

    .line 210
    .line 211
    .line 212
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    const/4 p1, 0x3

    .line 216
    if-eq v2, p1, :cond_a

    .line 217
    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_9
    :goto_6
    const-string/jumbo p1, "setMultiPackWallpaperSource, preload"

    .line 223
    .line 224
    .line 225
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    if-eq v2, v6, :cond_a

    .line 229
    .line 230
    invoke-virtual {p0, v6, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_a
    :goto_7
    return-void
.end method

.method public final setPluginWallpaperType(I)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    .line 2
    .line 3
    const-string/jumbo v1, "plugin_lock_wallpaper_type_sub"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "plugin_lock_wallpaper_type"

    .line 7
    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    move v5, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v5, v4

    .line 24
    :goto_0
    if-nez v5, :cond_4

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v3, v4

    .line 40
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method

.method public final setRecoverRequestedScreen(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setRecoverRequestedScreen() screen: "

    .line 8
    .line 9
    .line 10
    const-string v1, "PluginLockWallpaper"

    .line 11
    .line 12
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final updateHint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 2
    .line 3
    const-string v1, "PluginLockWallpaper"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string/jumbo v2, "updateHint() onWallpaperHintUpdate will be called: "

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    check-cast v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 50
    .line 51
    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v2, "updateHint() mHintUpdatedSkip = "

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, ", mHasData = "

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 74
    .line 75
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 83
    .line 84
    return-void
.end method
