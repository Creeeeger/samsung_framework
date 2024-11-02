.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public mInitX:F

.field public mInitY:F

.field public mIsClicked:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p1, :cond_6

    .line 15
    .line 16
    if-eq p1, v0, :cond_5

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq p1, v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitX:F

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sub-float/2addr p1, v2

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 39
    .line 40
    iget v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    .line 41
    .line 42
    int-to-float v2, v2

    .line 43
    cmpl-float p1, p1, v2

    .line 44
    .line 45
    if-gtz p1, :cond_3

    .line 46
    .line 47
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitY:F

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sub-float/2addr p1, v2

    .line 54
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 59
    .line 60
    iget v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    .line 61
    .line 62
    int-to-float v2, v2

    .line 63
    cmpl-float p1, p1, v2

    .line 64
    .line 65
    if-lez p1, :cond_7

    .line 66
    .line 67
    :cond_3
    const-string p1, "S.S.N."

    .line 68
    .line 69
    const-string v2, "OUT OF TOUCH SLOP "

    .line 70
    .line 71
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitY:F

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    sub-float/2addr p1, p2

    .line 81
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 86
    .line 87
    iget v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    .line 88
    .line 89
    int-to-float v2, v2

    .line 90
    cmpl-float p1, p1, v2

    .line 91
    .line 92
    if-lez p1, :cond_4

    .line 93
    .line 94
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dimissTopPopupNotification()V

    .line 97
    .line 98
    .line 99
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const-string/jumbo p2, "power"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroid/os/PowerManager;

    .line 118
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    invoke-virtual {p1, v2, v3, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->performClick()V

    .line 129
    .line 130
    .line 131
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitY:F

    .line 135
    .line 136
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitX:F

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitX:F

    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitY:F

    .line 150
    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    .line 152
    .line 153
    :cond_7
    :goto_0
    return v0
.end method
