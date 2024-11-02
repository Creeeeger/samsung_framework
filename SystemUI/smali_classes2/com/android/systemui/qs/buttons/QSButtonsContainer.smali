.class public Lcom/android/systemui/qs/buttons/QSButtonsContainer;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

.field public final mDismissReceiver:Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

.field public mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

.field public mExpanded:Z

.field public mListening:Z

.field public final mLogBuilder:Ljava/lang/StringBuilder;

.field public mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

.field public mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

.field public mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

.field public final mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/log/SecTouchLogHelper;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/android/systemui/log/SecTouchLogHelper;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mDismissReceiver:Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

    .line 24
    .line 25
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final getTouchLogText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "mExpanded: "

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", mListening: "

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mListening:Z

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", mQsDisabled: "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mDismissReceiver:Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

    .line 13
    .line 14
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mDismissReceiver:Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0a11

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 14
    .line 15
    const v0, 0x7f0a0392

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/qs/buttons/QSEditButton;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    .line 25
    .line 26
    const v0, 0x7f0a0800

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/systemui/qs/buttons/QSPowerButton;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    .line 36
    .line 37
    const v0, 0x7f0a0712

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 47
    .line 48
    new-instance v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const v1, 0x7f0605ad

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    .line 66
    .line 67
    const v2, 0x7f0a0390

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    .line 80
    .line 81
    const v2, 0x7f0a07fe

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 94
    .line 95
    const v1, 0x7f0a0a0f

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 2
    .line 3
    const-string v1, "QSButtonsContainer"

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->getTouchLogText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnInterceptTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 2
    .line 3
    const-string v1, "QSButtonsContainer"

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->getTouchLogText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method
