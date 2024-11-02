.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final HOME_HUB_FILES:[Ljava/lang/String;

.field public static final SOUND_THEME_FILES:[Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public final handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public soundID:I

.field public final soundIDs:[I

.field public soundPool:Landroid/media/SoundPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/volume/util/SoundPoolWrapper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "system/media/audio/ui/TW_Volume_control_Fun.ogg"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "system/media/audio/ui/TW_Volume_control_Retro.ogg"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "system/media/audio/ui/TW_Volume_control.ogg"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "system/media/audio/ui/TW_Volume_control_Calm.ogg"

    .line 17
    .line 18
    .line 19
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo v0, "system/media/audio/ui/HC_Volume_min.ogg"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "system/media/audio/ui/HC_Volume_max.ogg"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "system/media/audio/ui/HC_Volume_down.ogg"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v3, "system/media/audio/ui/HC_Volume_up.ogg"

    .line 35
    .line 36
    .line 37
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/util/HandlerWrapper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundID:I

    .line 10
    .line 11
    sget-boolean p2, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget-object p2, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    .line 17
    .line 18
    array-length p2, p2

    .line 19
    new-array v1, p2, [I

    .line 20
    .line 21
    :goto_0
    if-ge v0, p2, :cond_2

    .line 22
    .line 23
    aput p1, v1, v0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-boolean p2, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    sget-object p2, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    .line 33
    .line 34
    array-length p2, p2

    .line 35
    new-array v1, p2, [I

    .line 36
    .line 37
    :goto_1
    if-ge v0, p2, :cond_2

    .line 38
    .line 39
    aput p1, v1, v0

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-array v1, v0, [I

    .line 45
    .line 46
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final initSound(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    if-lt p1, v0, :cond_1

    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x3

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isNone(I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const p1, 0x1110247

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x5

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p1, 0x2

    .line 39
    :cond_3
    :goto_0
    new-instance p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;

    .line 40
    .line 41
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;-><init>(Landroid/media/SoundPool;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    new-instance p1, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method
