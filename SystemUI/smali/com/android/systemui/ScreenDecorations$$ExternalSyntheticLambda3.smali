.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;->f$1:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;->f$1:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 12
    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/ScreenDecorations;->showCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->hideCameraProtection()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 35
    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;->f$1:Z

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iput-boolean p0, v1, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isFrontCameraUsing:Z

    .line 49
    .line 50
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->statusIconContainerCallbacks:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusIconContainerCallback;

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusIconContainerCallback;->updateStatusIconContainer()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
