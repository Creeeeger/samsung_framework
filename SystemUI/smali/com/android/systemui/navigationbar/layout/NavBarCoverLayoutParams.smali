.class public final Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;


# instance fields
.field public final b5CutoutHeight:I

.field public final context:Landroid/content/Context;

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 7
    .line 8
    const/16 p1, 0x42

    .line 9
    .line 10
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getBarGravity(ZI)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x50

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    if-eq p2, p0, :cond_3

    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    if-eq p2, p0, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    if-eq p2, p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, p0

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/16 v0, 0x30

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/4 v0, 0x5

    .line 34
    :cond_4
    :goto_0
    return v0
.end method

.method public final getBarHeight(ZI)I
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-eqz p2, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    if-eq p2, p1, :cond_2

    .line 20
    .line 21
    const/4 p0, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const p1, 0x1050255

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    :cond_2
    :goto_0
    return p0
.end method

.method public final getBarInsetHeight(ZI)I
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 2
    .line 3
    const v0, 0x105025a

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->context:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz p2, :cond_3

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    if-eq p2, p1, :cond_3

    .line 36
    .line 37
    const/4 p0, -0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    :cond_3
    :goto_0
    return p0
.end method

.method public final getBarInsetWidth(ZI)I
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    if-eq p2, p1, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    .line 23
    .line 24
    :cond_1
    :goto_0
    return v1
.end method

.method public final getBarWidth(ZI)I
    .locals 1

    .line 1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    if-eq p2, p1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    .line 21
    .line 22
    :cond_1
    :goto_0
    return v0
.end method
