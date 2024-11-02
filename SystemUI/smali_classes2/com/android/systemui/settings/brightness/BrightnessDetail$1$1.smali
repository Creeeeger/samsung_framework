.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    .line 6
    .line 7
    const v2, 0x7f0a0317

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    move-object v6, v3

    .line 15
    check-cast v6, Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 21
    .line 22
    iget-object v5, v1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v7, v1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 25
    .line 26
    iget-object v8, v1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 27
    .line 28
    iget-object v9, v1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    iget-object v10, v1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mBackgroundHandler:Landroid/os/Handler;

    .line 31
    .line 32
    move-object v4, v3

    .line 33
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 34
    .line 35
    .line 36
    iput-object v3, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->val$context:Landroid/content/Context;

    .line 54
    .line 55
    const-string v3, "no_config_brightness"

    .line 56
    .line 57
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v1, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 74
    .line 75
    iput-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessDetailSliderView:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 78
    .line 79
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessDetailSliderView:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 80
    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    iget-boolean v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 84
    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 92
    .line 93
    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 95
    .line 96
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    const/4 v2, 0x0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 105
    .line 106
    if-nez p1, :cond_1

    .line 107
    .line 108
    move p1, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move p1, v2

    .line 111
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 115
    .line 116
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 123
    .line 124
    if-nez p1, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    move v1, v2

    .line 128
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 129
    .line 130
    .line 131
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 132
    .line 133
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 138
    .line 139
    new-instance v3, Landroid/os/Handler;

    .line 140
    .line 141
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1, v3}, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/os/Handler;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    .line 152
    .line 153
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    .line 163
    .line 164
    sget-object v1, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 165
    .line 166
    const/4 v3, -0x1

    .line 167
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 168
    .line 169
    .line 170
    sget-object v1, Lcom/android/systemui/settings/brightness/BrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    .line 171
    .line 172
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 178
    .line 179
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessDelegate:Lcom/android/systemui/settings/brightness/BrightnessDetail$5;

    .line 184
    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 191
    .line 192
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 193
    .line 194
    if-eqz p1, :cond_6

    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessDelegate:Lcom/android/systemui/settings/brightness/BrightnessDetail$6;

    .line 197
    .line 198
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 199
    .line 200
    .line 201
    :cond_6
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    .line 38
    .line 39
    return-void
.end method
