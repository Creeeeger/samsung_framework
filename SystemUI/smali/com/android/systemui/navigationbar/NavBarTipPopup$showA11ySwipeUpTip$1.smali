.class public final Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $talkbackEnabled:Z

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->$talkbackEnabled:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->$talkbackEnabled:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const v2, 0x7f1306a1

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v2, 0x7f1306a0

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v3, v1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, v1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 49
    .line 50
    iget-boolean v6, v1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v8, 0x0

    .line 54
    if-nez v6, :cond_2

    .line 55
    .line 56
    if-ne v5, v7, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const v5, 0x7f070962

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->windowManager:Landroid/view/WindowManager;

    .line 70
    .line 71
    const/16 v15, 0x208

    .line 72
    .line 73
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    .line 74
    .line 75
    const/4 v10, -0x2

    .line 76
    const/4 v11, -0x2

    .line 77
    const/4 v13, 0x0

    .line 78
    const/16 v14, 0x7d8

    .line 79
    .line 80
    const/16 v16, -0x3

    .line 81
    .line 82
    move-object v9, v5

    .line 83
    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 84
    .line 85
    .line 86
    const/16 v6, 0x10

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 89
    .line 90
    .line 91
    const-string v6, "NavBarTip"

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    const/16 v6, 0x53

    .line 97
    .line 98
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 99
    .line 100
    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    :catch_0
    iput v2, v1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->currentMessage:I

    .line 104
    .line 105
    move v1, v7

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move v1, v8

    .line 108
    :goto_1
    if-eqz v1, :cond_3

    .line 109
    .line 110
    sget-object v1, Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const-string v1, "NavigationBarAccessibilityShortcutTipCount"

    .line 120
    .line 121
    invoke-static {v0, v1, v8}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    add-int/2addr v2, v7

    .line 126
    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    :cond_3
    return-void
.end method
