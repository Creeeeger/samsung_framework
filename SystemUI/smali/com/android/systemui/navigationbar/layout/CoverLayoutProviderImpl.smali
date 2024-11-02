.class public final Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field public final MODE_BOTTOM_GESTURE:I

.field public final MODE_BOTTOM_SIDE_GESTURE:I

.field public final context:Landroid/content/Context;

.field public navigationMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_SIDE_GESTURE:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getButtonDistanceSize(Landroid/graphics/Point;Z)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    .line 2
    .line 3
    iget p2, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const p1, 0x7f070586

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const p1, 0x7f070589

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :goto_0
    return p0
.end method

.method public final getButtonWidth(Landroid/graphics/Point;Z)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    .line 2
    .line 3
    iget p2, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const p1, 0x7f070588

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const p1, 0x7f07058b

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :goto_0
    return p0
.end method

.method public final getGesturalLayout(ZZ)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 17
    .line 18
    iget v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    .line 25
    .line 26
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const p0, 0x7f130367

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const p0, 0x7f130365

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    if-eqz p2, :cond_2

    .line 45
    .line 46
    const p0, 0x7f130368

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const p0, 0x7f130366

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_SIDE_GESTURE:I

    .line 59
    .line 60
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    .line 61
    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    const p0, 0x7f13036d

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const p0, 0x7f13036a

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    const p0, 0x7f13036b

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_3
    return-object p0
.end method

.method public final getGestureWidth(Landroid/graphics/Point;Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const p1, 0x7f07058d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getLayout(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    if-eqz p1, :cond_0

    const p1, 0x7f13036c

    goto :goto_0

    :cond_0
    const p1, 0x7f130369

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLayout(ZI)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->getLayout(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSpaceSidePadding(Landroid/graphics/Point;Z)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getSpaceWidth(Landroid/graphics/Point;ZZ)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const p1, 0x7f07058c

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p2, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    .line 18
    .line 19
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    .line 20
    .line 21
    if-ne p2, p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const p1, 0x7f070587

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const p1, 0x7f07058a

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method

.method public final getVerticalLayoutID(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0d030b

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const p0, 0x7f0d0309

    .line 8
    .line 9
    .line 10
    :goto_0
    return p0
.end method
