.class public final Lcom/android/systemui/statusbar/KshPresenter$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    .line 4
    .line 5
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 6
    .line 7
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v4

    .line 29
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 42
    .line 43
    .line 44
    iget-object v5, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 45
    .line 46
    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 50
    .line 51
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    new-instance v6, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    invoke-direct {v6, v0, v1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 62
    .line 63
    and-int/lit8 v0, v0, 0x20

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    move v0, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v0, v4

    .line 70
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    .line 71
    .line 72
    if-eq v1, v0, :cond_7

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v3, v4

    .line 90
    :goto_2
    if-eqz v3, :cond_7

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 93
    .line 94
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 95
    .line 96
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    const v3, 0x103012e

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    const v3, 0x1030132

    .line 105
    .line 106
    .line 107
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-direct {v1, v4, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    .line 111
    .line 112
    iput-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 117
    .line 118
    iget-object v1, v1, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    .line 119
    .line 120
    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 121
    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 125
    .line 126
    .line 127
    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 128
    .line 129
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 130
    .line 131
    .line 132
    iput-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 133
    .line 134
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    .line 135
    .line 136
    new-instance v3, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;

    .line 137
    .line 138
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    .line 143
    .line 144
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 147
    .line 148
    .line 149
    return-void
.end method
