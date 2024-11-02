.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;

.field private static final YOUTUBE_PACKAGE:Ljava/lang/String; = "com.google.android.youtube"


# instance fields
.field private final mode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->mode:I

    .line 5
    .line 6
    return-void
.end method

.method private final dispatchMediaKeyEvent()V
    .locals 3

    .line 1
    new-instance p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/view/KeyEvent;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/16 v2, 0x7e

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/view/KeyEvent;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final isInstalledApp(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "/"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x6

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v0, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-array v0, v2, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, [Ljava/lang/String;

    .line 30
    .line 31
    array-length v0, p1

    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    aget-object p1, p1, v2

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    :catch_0
    :goto_0
    return v2
.end method


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->mode:I

    .line 2
    .line 3
    const-string v1, "MediaNotAvailable"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v3, "media_button_receiver"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    const-string v3, ","

    .line 28
    .line 29
    filled-new-array {v3}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x6

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static {v0, v3, v5, v4}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-array v3, v5, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, [Ljava/lang/String;

    .line 46
    .line 47
    array-length v3, v0

    .line 48
    if-eq v3, v2, :cond_0

    .line 49
    .line 50
    array-length v3, v0

    .line 51
    const/4 v4, 0x3

    .line 52
    if-ne v3, v4, :cond_1

    .line 53
    .line 54
    :cond_0
    aget-object v3, v0, v5

    .line 55
    .line 56
    invoke-direct {p0, v3}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->isInstalledApp(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 63
    .line 64
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    aget-object v3, v0, v5

    .line 69
    .line 70
    const-string v4, "com.google.android.youtube"

    .line 71
    .line 72
    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 79
    .line 80
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    aget-object v0, v0, v5

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->dispatchMediaKeyEvent()V

    .line 87
    .line 88
    .line 89
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    const-string/jumbo v1, "success"

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-object p0

    .line 99
    :cond_4
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 100
    .line 101
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method

.method public final getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->mode:I

    .line 2
    .line 3
    return p0
.end method
