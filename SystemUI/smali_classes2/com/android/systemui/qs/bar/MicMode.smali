.class public final Lcom/android/systemui/qs/bar/MicMode;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;


# instance fields
.field public micModeButton:Landroid/view/View;

.field public micModeContainer:Landroid/widget/LinearLayout;

.field public final micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

.field public micModeEffect:Landroid/widget/TextView;

.field public micModeEnable:Z

.field public micModeText:Landroid/widget/TextView;

.field public final qsPanelControllerLazy:Ldagger/Lazy;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final settingsListener:Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;

.field public final settingsValueList:[Landroid/net/Uri;

.field public final updateBarContentsRunnable:Ljava/lang/Runnable;

.field public final updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

.field public final util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/MicMode$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/MicMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/MicMode;->qsPanelControllerLazy:Ldagger/Lazy;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/qs/bar/MicMode;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/qs/bar/MicMode;->updateBarContentsRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    new-instance p1, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    .line 20
    .line 21
    const-string p1, "mic_mode_enable"

    .line 22
    .line 23
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "mic_mode_effect"

    .line 28
    .line 29
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    filled-new-array {p1, p2}, [Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsValueList:[Landroid/net/Uri;

    .line 38
    .line 39
    new-instance p1, Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;-><init>(Lcom/android/systemui/qs/bar/MicMode;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsListener:Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final fini()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsListener:Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getButton()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public final inflate(Landroid/view/View;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 5
    .line 6
    const v2, 0x7f0d035e

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const v0, 0x7f0a0691

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeText:Landroid/widget/TextView;

    .line 25
    .line 26
    const v0, 0x7f0a068c

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEffect:Landroid/widget/TextView;

    .line 36
    .line 37
    const v0, 0x7f0a068b

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/LinearLayout;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeContainer:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    .line 51
    .line 52
    return-void
.end method

.method public final init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsValueList:[Landroid/net/Uri;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [Landroid/net/Uri;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsListener:Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 18
    .line 19
    const-string v1, "mic_mode_enable"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    .line 35
    .line 36
    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setClickListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;-><init>(Lcom/android/systemui/qs/bar/MicMode;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final updateContents()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 4
    .line 5
    const-string v1, "mic_mode_effect"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEffect:Landroid/widget/TextView;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0, p0}, Lcom/android/systemui/qs/bar/micmode/MicModeItemFactory;->create(ILandroid/content/Context;)Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getText()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v2, "updateContents "

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "MicMode"

    .line 48
    .line 49
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final updateFontScale()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeText:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f070f13

    .line 9
    .line 10
    .line 11
    const v2, 0x3f4ccccd    # 0.8f

    .line 12
    .line 13
    .line 14
    const v3, 0x3fa66666    # 1.3f

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEffect:Landroid/widget/TextView;

    .line 21
    .line 22
    const v0, 0x7f070f12

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final updateHeightMargins(ZLcom/android/systemui/qs/bar/VideoCallMicModeStates;Lcom/android/systemui/qs/bar/VideoCallMicModeResources;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    xor-int/lit8 v1, p1, 0x1

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 14
    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    .line 23
    .line 24
    :goto_1
    const/4 v3, 0x0

    .line 25
    iget v4, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    .line 26
    .line 27
    iget-boolean v5, p2, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->videoCallEnabled:Z

    .line 28
    .line 29
    iget-boolean p2, p2, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->voIpTranslatorEnabled:Z

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    if-nez v5, :cond_5

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v6, v4

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    if-nez v5, :cond_5

    .line 41
    .line 42
    if-eqz p2, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    move v6, v3

    .line 46
    goto :goto_3

    .line 47
    :cond_5
    :goto_2
    iget v6, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->betweenMargin:I

    .line 48
    .line 49
    :goto_3
    if-eqz p1, :cond_7

    .line 50
    .line 51
    if-nez v5, :cond_7

    .line 52
    .line 53
    if-eqz p2, :cond_6

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_6
    move v3, v4

    .line 57
    :cond_7
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v0, v2, p1, p2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .line 81
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeContainer:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    if-eqz p1, :cond_9

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    .line 106
    .line 107
    iget v3, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    .line 108
    .line 109
    invoke-virtual {p1, v2, p2, v3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 110
    .line 111
    .line 112
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEffect:Landroid/widget/TextView;

    .line 113
    .line 114
    if-eqz p0, :cond_a

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget p3, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->startPadding:I

    .line 132
    .line 133
    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 134
    .line 135
    .line 136
    :cond_a
    return-void
.end method

.method public final updateVisibilities(Lcom/android/systemui/qs/bar/VideoCallMicModeStates;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/16 p0, 0x8

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_1
    return-void
.end method
