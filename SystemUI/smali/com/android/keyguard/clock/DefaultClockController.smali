.class public final Lcom/android/keyguard/clock/DefaultClockController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field public final mResources:Landroid/content/res/Resources;

.field public mTextDate:Landroid/widget/TextView;

.field public mTextTime:Landroid/widget/TextView;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/keyguard/clock/DefaultClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/keyguard/clock/DefaultClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getBigClockView()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    const v2, 0x7f0d00ba

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 16
    .line 17
    const v1, 0x7f0a0bd6

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 29
    .line 30
    const v1, 0x7f0a02f0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    .line 40
    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 42
    .line 43
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "default"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreferredY(I)I
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    return p1
.end method

.method public final getPreview(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/clock/DefaultClockController;->getBigClockView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/DefaultClockController;->setTextColor(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v2, Ljava/util/concurrent/FutureTask;

    .line 32
    .line 33
    new-instance v3, Lcom/android/keyguard/clock/ViewPreviewer$1;

    .line 34
    .line 35
    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/keyguard/clock/ViewPreviewer$1;-><init>(Lcom/android/keyguard/clock/ViewPreviewer;IILandroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-ne p1, p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/clock/ViewPreviewer;->mMainHandler:Landroid/os/Handler;

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception p0

    .line 69
    const-string p1, "ViewPreviewer"

    .line 70
    .line 71
    const-string p2, "Error completing task"

    .line 72
    .line 73
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :goto_1
    return-object v1
.end method

.method public final getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    .line 2
    .line 3
    const v0, 0x7f080731

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    .line 2
    .line 3
    const v0, 0x7f13033e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final onTimeTick()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setColorPalette(Z[I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setDarkAmount(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final shouldShowStatusArea()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
