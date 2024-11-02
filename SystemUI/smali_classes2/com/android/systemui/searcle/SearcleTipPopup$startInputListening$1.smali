.class public final Lcom/android/systemui/searcle/SearcleTipPopup$startInputListening$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$startInputListening$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "startInputListening ev = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SearcleTipPopup"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    check-cast p1, Landroid/view/MotionEvent;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    sget v0, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$startInputListening$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->getBubbleLayout()Landroid/widget/LinearLayout;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const v3, 0x105025a

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    add-int/2addr v1, v2

    .line 74
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 77
    .line 78
    add-int/2addr v1, v2

    .line 79
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 91
    .line 92
    const/4 v3, 0x2

    .line 93
    if-ne v1, v3, :cond_2

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_2

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const/4 v1, 0x0

    .line 106
    :goto_0
    if-eqz v1, :cond_3

    .line 107
    .line 108
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 109
    .line 110
    add-int/2addr v1, v2

    .line 111
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 112
    .line 113
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 114
    .line 115
    add-int/2addr v1, v2

    .line 116
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 120
    .line 121
    add-int/2addr v1, v2

    .line 122
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 123
    .line 124
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 125
    .line 126
    add-int/2addr v1, v2

    .line 127
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 128
    .line 129
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    float-to-int v1, v1

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    float-to-int p1, p1

    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_4

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hide()V

    .line 146
    .line 147
    .line 148
    :cond_4
    return-void
.end method
