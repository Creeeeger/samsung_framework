.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;


# instance fields
.field private final mInsetsSourceOwner:Landroid/os/Binder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->mInsetsSourceOwner:Landroid/os/Binder;

    .line 10
    .line 11
    return-void
.end method

.method private getInsetsFrameProvider(I)[Landroid/view/InsetsFrameProvider;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/InsetsFrameProvider;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->mInsetsSourceOwner:Landroid/os/Binder;

    .line 4
    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, p0, v2, v1}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 14
    .line 15
    const/16 v1, 0x7db

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, v1, v3}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    .line 19
    .line 20
    .line 21
    filled-new-array {p0}, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, -0x1

    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    invoke-static {v2, v2, v2, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 37
    .line 38
    .line 39
    :cond_0
    filled-new-array {p0}, [Landroid/view/InsetsFrameProvider;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method private getInsetsFrameProviderWithGesture(I)[Landroid/view/InsetsFrameProvider;
    .locals 5

    .line 1
    new-instance v0, Landroid/view/InsetsFrameProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->mInsetsSourceOwner:Landroid/os/Binder;

    .line 4
    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v1, v3, v2}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 14
    .line 15
    const/16 v2, 0x7db

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v1, v2, v4}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    .line 19
    .line 20
    .line 21
    filled-new-array {v1}, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, -0x1

    .line 30
    if-eq p1, v1, :cond_0

    .line 31
    .line 32
    invoke-static {v3, v3, v3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance p1, Landroid/view/InsetsFrameProvider;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->mInsetsSourceOwner:Landroid/os/Binder;

    .line 42
    .line 43
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-direct {p1, p0, v3, v1}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    filled-new-array {v0, p1}, [Landroid/view/InsetsFrameProvider;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public setProvidedInsets(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->getInsetsFrameProvider(I)[Landroid/view/InsetsFrameProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 6
    .line 7
    return-void
.end method

.method public setProvidedInsetsWithGesture(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->getInsetsFrameProviderWithGesture(I)[Landroid/view/InsetsFrameProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 6
    .line 7
    return-void
.end method
