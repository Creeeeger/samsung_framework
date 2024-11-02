.class public final Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final backExecutor:Ljava/util/concurrent/Executor;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

.field public doneButton:Landroid/widget/Button;

.field public final executor:Ljava/util/concurrent/Executor;

.field public isOOBE:Z

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p9, p4, p5, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 23
    .line 24
    iput-object p12, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 25
    .line 26
    iput-object p13, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 27
    .line 28
    const-string p1, "CustomControlsProviderSelectorActivity"

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method public static final access$updateButtonStatue(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string/jumbo v1, "updateButtonStatue donButton.isEnabled = "

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method


# virtual methods
.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleDone()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "ControlsOOBEManageAppsCompleted"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    move-object v0, v1

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getItemCount()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-instance v2, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;

    .line 41
    .line 42
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;-><init>(II)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 51
    .line 52
    check-cast v0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startCustomControlsActivity(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    const-string/jumbo v0, "onBackPressed"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->isOOBE:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->handleDone()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-object v0, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v1, "onCreate"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0d001f

    .line 15
    .line 16
    .line 17
    invoke-virtual {v15, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a0bf4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v15, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 28
    .line 29
    invoke-virtual {v15, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0a0609

    .line 33
    .line 34
    .line 35
    invoke-virtual {v15, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/ScrollView;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const v3, 0x7f0b0037

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v3, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 57
    .line 58
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(Landroid/view/View;F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v2, "ControlsOOBEManageAppsCompleted"

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x1

    .line 78
    xor-int/2addr v1, v2

    .line 79
    iput-boolean v1, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->isOOBE:Z

    .line 80
    .line 81
    const-string/jumbo v4, "onCreate isOOBE = "

    .line 82
    .line 83
    .line 84
    invoke-static {v4, v1, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-boolean v0, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->isOOBE:Z

    .line 88
    .line 89
    const v1, 0x7f0a0b4d

    .line 90
    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const v4, 0x7f13041c

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v15, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    invoke-virtual {v15, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const v2, 0x7f1303af

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    const v0, 0x7f0a0204

    .line 138
    .line 139
    .line 140
    invoke-virtual {v15, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/Button;

    .line 145
    .line 146
    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$5$1;

    .line 147
    .line 148
    invoke-direct {v1, v15}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$5$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iput-object v0, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    .line 155
    .line 156
    const v0, 0x7f0a01fb

    .line 157
    .line 158
    .line 159
    invoke-virtual {v15, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/widget/LinearLayout;

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_2

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const v4, 0x7f1303e3

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 193
    .line 194
    .line 195
    :cond_2
    invoke-virtual {v15, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const v2, 0x7f1303ae

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    :goto_0
    new-instance v14, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 216
    .line 217
    iget-object v1, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 218
    .line 219
    iget-object v2, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 220
    .line 221
    iget-object v3, v15, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 222
    .line 223
    iget-object v4, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 224
    .line 225
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    new-instance v6, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$9;

    .line 230
    .line 231
    invoke-direct {v6, v15}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$9;-><init>(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    new-instance v13, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 235
    .line 236
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    new-instance v9, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$10;

    .line 241
    .line 242
    iget-object v0, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 243
    .line 244
    invoke-direct {v9, v0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$10;-><init>(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    new-instance v10, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$11;

    .line 248
    .line 249
    iget-object v0, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 250
    .line 251
    invoke-direct {v10, v0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$11;-><init>(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    new-instance v11, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$12;

    .line 255
    .line 256
    invoke-direct {v11, v0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$12;-><init>(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    new-instance v12, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$13;

    .line 260
    .line 261
    invoke-direct {v12, v0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$13;-><init>(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    move-object v7, v13

    .line 265
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 266
    .line 267
    .line 268
    iget-object v9, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 269
    .line 270
    iget-object v10, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 271
    .line 272
    iget-object v11, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 273
    .line 274
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    iget-object v0, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 279
    .line 280
    check-cast v0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->instantiateSharedPrefs()Landroid/content/SharedPreferences;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    sget-object v7, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 287
    .line 288
    const-string v8, "authorized_panels"

    .line 289
    .line 290
    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 291
    .line 292
    .line 293
    move-result-object v16

    .line 294
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    new-instance v8, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$14;

    .line 298
    .line 299
    invoke-direct {v8, v15}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$14;-><init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    .line 300
    .line 301
    .line 302
    move-object v0, v14

    .line 303
    move-object v7, v13

    .line 304
    move-object/from16 v17, v8

    .line 305
    .line 306
    move-object/from16 v8, p0

    .line 307
    .line 308
    move-object/from16 v13, v16

    .line 309
    .line 310
    move-object/from16 v18, v14

    .line 311
    .line 312
    move-object/from16 v14, v17

    .line 313
    .line 314
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Landroid/content/res/Resources;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    .line 315
    .line 316
    .line 317
    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$15$1;

    .line 318
    .line 319
    invoke-direct {v0, v15}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$15$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    .line 320
    .line 321
    .line 322
    move-object/from16 v1, v18

    .line 323
    .line 324
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 325
    .line 326
    .line 327
    iput-object v1, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 328
    .line 329
    const v0, 0x7f0a02c3

    .line 330
    .line 331
    .line 332
    invoke-virtual {v15, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 337
    .line 338
    iget-object v1, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 339
    .line 340
    if-nez v1, :cond_3

    .line 341
    .line 342
    const/4 v1, 0x0

    .line 343
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 344
    .line 345
    .line 346
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 347
    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 356
    .line 357
    .line 358
    const/16 v1, 0xf

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    const v3, 0x7f0600a7

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 379
    .line 380
    .line 381
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 382
    .line 383
    if-eqz v0, :cond_5

    .line 384
    .line 385
    iget-boolean v0, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->isOOBE:Z

    .line 386
    .line 387
    if-eqz v0, :cond_4

    .line 388
    .line 389
    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$Intro;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$Intro;

    .line 390
    .line 391
    goto :goto_1

    .line 392
    :cond_4
    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$ManageApps;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$ManageApps;

    .line 393
    .line 394
    :goto_1
    iget-object v1, v15, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 395
    .line 396
    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 397
    .line 398
    .line 399
    :cond_5
    return-void
.end method

.method public final onDestroy()V
    .locals 8

    .line 1
    const-string/jumbo v0, "onDestroy"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 10
    .line 11
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$saveCurrentFavorites$1;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$saveCurrentFavorites$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 26
    .line 27
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 33
    .line 34
    if-eqz v0, :cond_9

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v1, v2

    .line 52
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getItemCount()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    new-instance v2, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;

    .line 57
    .line 58
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;-><init>(II)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 62
    .line 63
    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 67
    .line 68
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getFavorites()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    check-cast v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    move-object v4, v3

    .line 96
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 97
    .line 98
    iget-object v4, v4, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-nez v5, :cond_3

    .line 105
    .line 106
    new-instance v5, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_3
    check-cast v5, Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_8

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Ljava/util/Map$Entry;

    .line 144
    .line 145
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Landroid/content/ComponentName;

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Ljava/util/List;

    .line 156
    .line 157
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    sget-object v5, Lcom/android/systemui/controls/ui/util/SALogger;->Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    .line 162
    .line 163
    instance-of v6, v3, Ljava/util/Collection;

    .line 164
    .line 165
    const/4 v7, 0x0

    .line 166
    if-eqz v6, :cond_5

    .line 167
    .line 168
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_5

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_7

    .line 184
    .line 185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 190
    .line 191
    iget-object v6, v6, Lcom/android/systemui/controls/controller/StructureInfo;->customStructureInfo:Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;

    .line 192
    .line 193
    iget-boolean v6, v6, Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;->active:Z

    .line 194
    .line 195
    if-eqz v6, :cond_6

    .line 196
    .line 197
    const/4 v3, 0x1

    .line 198
    goto :goto_5

    .line 199
    :cond_7
    :goto_4
    move v3, v7

    .line 200
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v7}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    new-instance v5, Lcom/android/systemui/controls/ui/util/SALogger$AppStatus;

    .line 212
    .line 213
    invoke-direct {v5, v4, v3}, Lcom/android/systemui/controls/ui/util/SALogger$AppStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_8
    new-instance v2, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;

    .line 221
    .line 222
    new-instance v3, Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;

    .line 223
    .line 224
    invoke-direct {v3, v1}, Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;-><init>(Ljava/util/List;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v2, v3}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;)V

    .line 231
    .line 232
    .line 233
    :cond_9
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->onBackPressed()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    return p0
.end method
