.class public final synthetic Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 10
    .line 11
    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable(Lcom/android/systemui/statusbar/AutoHideUiElement;)Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 28
    .line 29
    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mShouldHide:Z

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    and-int/2addr p1, v0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mShouldHide:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 50
    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable(Lcom/android/systemui/statusbar/AutoHideUiElement;)Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    const-wide/16 v0, 0x1f4

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 70
    .line 71
    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable(Lcom/android/systemui/statusbar/AutoHideUiElement;)Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 88
    .line 89
    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-interface {p1}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mIsVisible:Z

    .line 104
    .line 105
    :cond_4
    return-void

    .line 106
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Ljava/util/function/Consumer;

    .line 109
    .line 110
    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 111
    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
