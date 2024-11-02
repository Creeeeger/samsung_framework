.class public final Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentAlign:I

.field public mCurrentNavigationMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getButtonDistanceSize(Landroid/graphics/Point;Z)I
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 6
    .line 7
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 13
    .line 14
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 15
    .line 16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :goto_0
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    int-to-double p0, p2

    .line 25
    const-wide v0, 0x3f8a9fbe76c8b439L    # 0.013

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 32
    .line 33
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 34
    .line 35
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    int-to-double p0, p0

    .line 40
    const-wide v0, 0x3fb851eb851eb852L    # 0.095

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    :goto_1
    mul-double/2addr p0, v0

    .line 46
    double-to-int p0, p0

    .line 47
    return p0
.end method

.method public final getButtonWidth(Landroid/graphics/Point;Z)I
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 6
    .line 7
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 13
    .line 14
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 15
    .line 16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    int-to-double p1, p2

    .line 25
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    const-wide v0, 0x3fca7ef9db22d0e5L    # 0.207

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :goto_1
    mul-double/2addr p1, v0

    .line 42
    double-to-int p0, p1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 45
    .line 46
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    int-to-double p0, p0

    .line 53
    const-wide v0, 0x3fc0a3d70a3d70a4L    # 0.13

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    mul-double/2addr p0, v0

    .line 59
    double-to-int p0, p0

    .line 60
    :goto_2
    return p0
.end method

.method public final getGesturalLayout(ZZ)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const p0, 0x7f130382

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const p0, 0x7f130381

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    const p0, 0x7f130387

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const p0, 0x7f130384

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_2
    return-object p0
.end method

.method public final getGestureWidth(Landroid/graphics/Point;Z)I
    .locals 2

    .line 1
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 2
    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 4
    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    int-to-double p0, p0

    .line 10
    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    mul-double/2addr p0, v0

    .line 16
    double-to-int p0, p0

    .line 17
    return p0
.end method

.method public final getLayout(Z)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p1, 0x7f130375

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f130376

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLayout(ZI)Ljava/lang/String;
    .locals 2

    .line 4
    iput p2, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->getLayout(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f130374

    goto :goto_0

    :cond_1
    const p0, 0x7f13036f

    .line 8
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    const p0, 0x7f130373

    goto :goto_1

    :cond_3
    const p0, 0x7f13036e

    .line 9
    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSpaceSidePadding(Landroid/graphics/Point;Z)I
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 6
    .line 7
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 13
    .line 14
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 15
    .line 16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    .line 21
    .line 22
    const-wide v1, 0x3fa10624dd2f1aa0L    # 0.03325

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    int-to-double p1, p2

    .line 30
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    if-ne p0, v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    :goto_1
    mul-double/2addr p1, v1

    .line 39
    double-to-int p0, p1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 42
    .line 43
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 44
    .line 45
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    int-to-double p0, p0

    .line 50
    mul-double/2addr p0, v1

    .line 51
    double-to-int p0, p0

    .line 52
    :goto_2
    return p0
.end method

.method public final getSpaceWidth(Landroid/graphics/Point;ZZ)I
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 6
    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 13
    .line 14
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 15
    .line 16
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    iget p2, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    .line 21
    .line 22
    const-wide v0, 0x3fbc28f5c28f5c29L    # 0.11

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    int-to-double p1, p1

    .line 30
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    if-ne p0, p3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-wide v0, 0x3fb3333333333333L    # 0.075

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :goto_1
    mul-double/2addr p1, v0

    .line 42
    double-to-int p0, p1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    int-to-double p0, p1

    .line 45
    mul-double/2addr p0, v0

    .line 46
    double-to-int p0, p0

    .line 47
    :goto_2
    return p0
.end method

.method public final getVerticalLayoutID(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0d030a

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
