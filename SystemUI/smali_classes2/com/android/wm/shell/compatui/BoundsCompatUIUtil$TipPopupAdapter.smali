.class public final enum Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

.field public static final enum INSTANCE:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mBoundsCompatUILayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

.field private mMessage:Ljava/lang/CharSequence;

.field private mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private mViewHost:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmViewHost(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static -$$Nest$mbuild(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupBuilder;)Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupBuilder;->mBoundsCompatUILayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 5
    .line 6
    sget-object v1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "build: no layout, something went wrong."

    .line 11
    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string/jumbo v3, "window"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/view/WindowManager;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 34
    .line 35
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mBoundsCompatUILayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mBoundsCompatUILayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 44
    .line 45
    :cond_2
    iget-object p1, p1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupBuilder;->mMessage:Ljava/lang/CharSequence;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mMessage:Ljava/lang/CharSequence;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, "build: removed remained host, "

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 81
    .line 82
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mBoundsCompatUILayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const v0, 0x7f0d0058

    .line 96
    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    sget-object p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 111
    .line 112
    return-object p0
.end method

.method public static -$$Nest$mshowTipPopup(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mBoundsCompatUILayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    new-instance v2, Lcom/samsung/android/widget/SemTipPopup;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 26
    .line 27
    invoke-direct {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mMessage:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 49
    .line 50
    new-instance v4, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-direct {v4, p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    .line 64
    const/16 v4, 0x35

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    if-eq v2, v4, :cond_4

    .line 68
    .line 69
    const/16 v4, 0x53

    .line 70
    .line 71
    if-eq v2, v4, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 74
    .line 75
    aget v4, v0, v5

    .line 76
    .line 77
    aget v0, v0, v3

    .line 78
    .line 79
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 80
    .line 81
    shr-int/2addr v1, v3

    .line 82
    sub-int/2addr v0, v1

    .line 83
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 87
    .line 88
    invoke-virtual {p0, v5}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 93
    .line 94
    aget v4, v0, v5

    .line 95
    .line 96
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 97
    .line 98
    add-int/2addr v4, v5

    .line 99
    aget v0, v0, v3

    .line 100
    .line 101
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 102
    .line 103
    shr-int/2addr v1, v3

    .line 104
    sub-int/2addr v0, v1

    .line 105
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 109
    .line 110
    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 115
    .line 116
    aget v4, v0, v5

    .line 117
    .line 118
    aget v0, v0, v3

    .line 119
    .line 120
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 121
    .line 122
    shr-int/2addr v1, v3

    .line 123
    add-int/2addr v0, v1

    .line 124
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 128
    .line 129
    const/4 v0, 0x2

    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    :goto_1
    sget-object v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    const-string v1, "No target button with layoutParams to show guide tip."

    .line 137
    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->dismissTipPopup()V

    .line 142
    .line 143
    .line 144
    :goto_2
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 10
    .line 11
    filled-new-array {v0}, [Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->$VALUES:[Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 16
    .line 17
    const-class v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$1;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 10
    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->$VALUES:[Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final dismissTipPopup()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 2
    .line 3
    sget-object v1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "dismissTipPopup: mViewHost="

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", callers="

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x6

    .line 25
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string v0, "dismissTipPopup: dismiss TipPopup"

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->dismissTipPopup()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mBoundsCompatUILayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mMessage:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 14
    .line 15
    return-void
.end method

.method public final show()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 2
    .line 3
    sget-object v1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "show: host is null, something went wrong."

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mBoundsCompatUILayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/16 v6, 0x7f6

    .line 35
    .line 36
    const/16 v7, 0x28

    .line 37
    .line 38
    const/4 v8, -0x3

    .line 39
    move-object v3, v2

    .line 40
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/os/Binder;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 49
    .line 50
    const-class v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 60
    .line 61
    const v3, 0x20000040

    .line 62
    .line 63
    .line 64
    or-int/2addr v0, v3

    .line 65
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 66
    .line 67
    const/16 v0, 0x10

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v3, "show: mViewHost="

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, ", layoutParams="

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    .line 107
    .line 108
    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
