.class public final synthetic Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-ne p2, p6, :cond_0

    .line 7
    .line 8
    if-ne p4, p8, :cond_0

    .line 9
    .line 10
    if-ne p3, p7, :cond_0

    .line 11
    .line 12
    if-ne p5, p9, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSizePoint:Landroid/graphics/Point;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 42
    .line 43
    .line 44
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 45
    .line 46
    div-int/lit8 p1, p1, 0x5

    .line 47
    .line 48
    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 49
    .line 50
    iget p1, p2, Landroid/graphics/Point;->y:I

    .line 51
    .line 52
    div-int/lit8 p1, p1, 0x5

    .line 53
    .line 54
    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mMainHandler:Landroid/os/Handler;

    .line 57
    .line 58
    new-instance p2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void
.end method
