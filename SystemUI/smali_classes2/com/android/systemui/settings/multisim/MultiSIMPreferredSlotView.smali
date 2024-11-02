.class public Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;


# static fields
.field public static final DATA_ONLY_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;


# instance fields
.field public mChangedByDataButton:Z

.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field public mCurrentOrientation:I

.field public mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field public mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field public mESIMIconArray:Landroid/content/res/TypedArray;

.field public final mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

.field public mLocale:Ljava/util/Locale;

.field public mNightModeOn:Z

.field public mPSimIconArray:Landroid/content/res/TypedArray;

.field public mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

.field public final mSecTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

.field public mSlotButtonGroup:Landroid/widget/LinearLayout;

.field public mSlotButtonTextColor:I

.field public final mSlotButtons:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupportESim()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 13
    .line 14
    aget-boolean v0, v0, p1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f030057

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 42
    .line 43
    aget p0, p0, p1

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const v1, 0x7f030058

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 74
    .line 75
    aget p0, p0, p1

    .line 76
    .line 77
    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    :goto_0
    return p0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 12
    .line 13
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 14
    .line 15
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 16
    .line 17
    filled-new-array {v0, v1}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 22
    .line 23
    filled-new-array {v2}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->DATA_ONLY_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    .line 16
    .line 17
    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    .line 18
    .line 19
    iput-boolean p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 20
    .line 21
    new-instance p2, Lcom/android/systemui/log/SecTouchLogHelper;

    .line 22
    .line 23
    invoke-direct {p2}, Lcom/android/systemui/log/SecTouchLogHelper;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSecTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 27
    .line 28
    new-instance p2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-class p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final isPhoneNumberNeeded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 24
    .line 25
    :cond_0
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->reverseSlotIfNeed(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ge v1, v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-ne v2, p0, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 85
    .line 86
    .line 87
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    .line 93
    .line 94
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    .line 126
    .line 127
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->updateButtonList()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    .line 5
    .line 6
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iput v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_0
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v3

    .line 24
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 25
    .line 26
    and-int/lit8 v1, v1, 0x20

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v1, v3

    .line 33
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    .line 34
    .line 35
    if-eq v4, v1, :cond_3

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    .line 38
    .line 39
    move v0, v2

    .line 40
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_4

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move v2, v0

    .line 60
    :goto_2
    if-eqz v2, :cond_7

    .line 61
    .line 62
    const-string p1, "MultiSIMPreferredSlotView"

    .line 63
    .line 64
    const-string/jumbo v0, "updateResources()"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const v0, 0x7f0604fd

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const v2, 0x7f080db4

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v2, 0x7f070946

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 122
    .line 123
    .line 124
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 147
    .line 148
    if-eqz p1, :cond_7

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 151
    .line 152
    .line 153
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 154
    .line 155
    :cond_7
    return-void
.end method

.method public final onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->updateSlotListPopupContents()V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 13
    .line 14
    :cond_0
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/DualToneHandler;

    .line 5
    .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const v3, 0x7f140570

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 32
    .line 33
    and-int/lit8 v0, v0, 0x20

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v1

    .line 41
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 54
    .line 55
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    .line 76
    .line 77
    const v0, 0x7f0a0a63

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const v2, 0x7f070946

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const v1, 0x7f0604fd

    .line 111
    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    .line 119
    .line 120
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSecTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "return:"

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    xor-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "MultiSIMPreferredSlotView"

    .line 25
    .line 26
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnInterceptTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    xor-int/lit8 p0, p0, 0x1

    .line 34
    .line 35
    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSecTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "MultiSIMPreferredSlotView"

    .line 6
    .line 7
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateButtonList()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/Operator;->supportNetworkInfoAtMultisimBar()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sget-object v0, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 28
    .line 29
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, v1

    .line 46
    :goto_0
    if-eqz v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->DATA_ONLY_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 52
    .line 53
    :goto_1
    array-length v2, v0

    .line 54
    :goto_2
    if-ge v1, v2, :cond_3

    .line 55
    .line 56
    aget-object v3, v0, v1

    .line 57
    .line 58
    new-instance v4, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-direct {v4, p0, v3, v5, v6}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    return-void
.end method
