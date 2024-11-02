.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 13
    .line 14
    iget-boolean v2, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget v2, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    .line 19
    .line 20
    if-eq v2, v0, :cond_3

    .line 21
    .line 22
    iget-object v2, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    sget-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    sget-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move p1, v1

    .line 44
    :goto_0
    if-eqz p1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateImmersiveState(Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 55
    .line 56
    iput v0, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    .line 57
    .line 58
    new-instance p1, Landroid/content/Intent;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-class v2, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    .line 67
    .line 68
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0, v0}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 85
    .line 86
    .line 87
    const/high16 v0, 0x30010000

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 99
    .line 100
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void

    .line 104
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "Cancel FlexDimActivity: mIsMediaPanel="

    .line 107
    .line 108
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 112
    .line 113
    iget-boolean v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, " mImmersiveState="

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 124
    .line 125
    iget v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, " mFlexMediaPanel="

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 136
    .line 137
    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 138
    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    move v2, v0

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move v2, v1

    .line 144
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, " sFlexPanelActivity="

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    sget-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 153
    .line 154
    if-eqz v2, :cond_5

    .line 155
    .line 156
    move v2, v0

    .line 157
    goto :goto_4

    .line 158
    :cond_5
    move v2, v1

    .line 159
    :goto_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v2, " sFlexDimActivity="

    .line 163
    .line 164
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    sget-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    .line 168
    .line 169
    if-eqz v2, :cond_6

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_6
    move v0, v1

    .line 173
    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, " usingTalkBack="

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 184
    .line 185
    if-eqz p0, :cond_7

    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    :cond_7
    const-string p0, "FlexPanelActivity"

    .line 192
    .line 193
    invoke-static {p1, v1, p0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method
