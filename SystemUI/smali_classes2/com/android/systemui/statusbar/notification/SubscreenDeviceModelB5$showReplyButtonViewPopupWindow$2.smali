.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $iconSize:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $view:Landroid/view/View;

.field public downHit:Ljava/lang/Boolean;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$iconSize:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$view:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    cmpl-float v3, v0, v1

    .line 22
    .line 23
    if-lez v3, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$iconSize:Lkotlin/jvm/internal/Ref$IntRef;

    .line 26
    .line 27
    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 28
    .line 29
    int-to-float v4, v3

    .line 30
    cmpg-float v0, v0, v4

    .line 31
    .line 32
    if-gez v0, :cond_1

    .line 33
    .line 34
    cmpl-float v0, p2, v1

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    int-to-float v0, v3

    .line 39
    cmpg-float p2, p2, v0

    .line 40
    .line 41
    if-gez p2, :cond_1

    .line 42
    .line 43
    move p1, v2

    .line 44
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v2, :cond_7

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    .line 58
    .line 59
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 70
    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 74
    .line 75
    .line 76
    :cond_3
    return v2

    .line 77
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    cmpg-float v3, p1, v1

    .line 86
    .line 87
    if-ltz v3, :cond_6

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$iconSize:Lkotlin/jvm/internal/Ref$IntRef;

    .line 90
    .line 91
    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 92
    .line 93
    int-to-float v4, v3

    .line 94
    cmpl-float p1, p1, v4

    .line 95
    .line 96
    if-gtz p1, :cond_6

    .line 97
    .line 98
    cmpg-float p1, p2, v1

    .line 99
    .line 100
    if-ltz p1, :cond_6

    .line 101
    .line 102
    int-to-float p1, v3

    .line 103
    cmpl-float p1, p2, p1

    .line 104
    .line 105
    if-lez p1, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    .line 109
    .line 110
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$view:Landroid/view/View;

    .line 119
    .line 120
    const p2, 0x7f0a09d6

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 138
    .line 139
    if-eqz p0, :cond_7

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 142
    .line 143
    .line 144
    :cond_7
    :goto_1
    return v2
.end method
