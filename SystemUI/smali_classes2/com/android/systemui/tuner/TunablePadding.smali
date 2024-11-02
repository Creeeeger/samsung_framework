.class public Lcom/android/systemui/tuner/TunablePadding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;
    }
.end annotation


# instance fields
.field public final mDefaultSize:I

.field public final mDensity:F

.field public final mFlags:I

.field public final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILandroid/view/View;Lcom/android/systemui/tuner/TunerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/systemui/tuner/TunablePadding;->mDefaultSize:I

    .line 5
    .line 6
    iput p3, p0, Lcom/android/systemui/tuner/TunablePadding;->mFlags:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    .line 9
    .line 10
    new-instance p2, Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-class p4, Landroid/view/WindowManager;

    .line 20
    .line 21
    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    check-cast p3, Landroid/view/WindowManager;

    .line 26
    .line 27
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p3, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    .line 33
    .line 34
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 35
    .line 36
    iput p2, p0, Lcom/android/systemui/tuner/TunablePadding;->mDensity:F

    .line 37
    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p5, p0, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-float p1, p1

    .line 8
    iget p2, p0, Lcom/android/systemui/tuner/TunablePadding;->mDensity:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    mul-float/2addr p1, p2

    .line 11
    float-to-int p1, p1

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    :cond_0
    iget p1, p0, Lcom/android/systemui/tuner/TunablePadding;->mDefaultSize:I

    .line 14
    .line 15
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRtl()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRtl()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_2
    iget p0, p0, Lcom/android/systemui/tuner/TunablePadding;->mFlags:I

    .line 36
    .line 37
    and-int/2addr v0, p0

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    move v0, p1

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    move v0, v2

    .line 44
    :goto_2
    and-int/lit8 v3, p0, 0x4

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    move v3, p1

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    move v3, v2

    .line 51
    :goto_3
    and-int/2addr v1, p0

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    move v1, p1

    .line 55
    goto :goto_4

    .line 56
    :cond_5
    move v1, v2

    .line 57
    :goto_4
    and-int/lit8 p0, p0, 0x8

    .line 58
    .line 59
    if-eqz p0, :cond_6

    .line 60
    .line 61
    goto :goto_5

    .line 62
    :cond_6
    move p1, v2

    .line 63
    :goto_5
    invoke-virtual {p2, v0, v3, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
