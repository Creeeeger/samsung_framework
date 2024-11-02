.class public final Lcom/android/systemui/qs/bar/VoIPTranslator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public isPrerequisiteMet:Z

.field public isVoIPEnabled:Z

.field public final panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final settingsListener:Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;

.field public final settingsValueList:[Landroid/net/Uri;

.field public final updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

.field public final util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

.field public voIPTranslatorButton:Landroid/view/View;

.field public voIPTranslatorContainer:Landroid/widget/LinearLayout;

.field public voIpTranslatorText:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/VoIPTranslator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/VoIPTranslator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->context:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    const-string/jumbo p1, "voip_translator_enable"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsValueList:[Landroid/net/Uri;

    .line 26
    .line 27
    new-instance p1, Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;-><init>(Lcom/android/systemui/qs/bar/VoIPTranslator;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsListener:Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;

    .line 33
    .line 34
    return-void
.end method

.method public static updatePrerequisite()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "isPrerequisiteMet: disable native ai: "

    .line 12
    .line 13
    const-string v2, "VoIPTranslator"

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    return v0
.end method


# virtual methods
.method public final fini()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsListener:Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

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
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

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
    iget-object v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 5
    .line 6
    const v2, 0x7f0d039a

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
    const v0, 0x7f0a0cc8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorContainer:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    const v0, 0x7f0a0ccc

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
    iput-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIpTranslatorText:Landroid/widget/TextView;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    .line 40
    .line 41
    return-void
.end method

.method public final init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsValueList:[Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsListener:Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 18
    .line 19
    const-string/jumbo v1, "voip_translator_enable"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isVoIPEnabled:Z

    .line 36
    .line 37
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    invoke-static {}, Lcom/android/systemui/qs/bar/VoIPTranslator;->updatePrerequisite()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isPrerequisiteMet:Z

    .line 44
    .line 45
    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isVoIPEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setClickListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/qs/bar/VoIPTranslator$setClickListener$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/bar/VoIPTranslator$setClickListener$1;-><init>(Lcom/android/systemui/qs/bar/VoIPTranslator;Lkotlin/jvm/functions/Function1;)V

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
    .locals 0

    .line 1
    return-void
.end method

.method public final updateFontScale()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIpTranslatorText:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const p0, 0x3f4ccccd    # 0.8f

    .line 9
    .line 10
    .line 11
    const v1, 0x3fa66666    # 1.3f

    .line 12
    .line 13
    .line 14
    const v2, 0x7f070f13

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, p0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final updateHeightMargins(ZLcom/android/systemui/qs/bar/VideoCallMicModeStates;Lcom/android/systemui/qs/bar/VideoCallMicModeResources;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorContainer:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 14
    .line 15
    if-eqz v0, :cond_6

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
    iget-boolean p2, p2, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->micModeEnabled:Z

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v5, v4

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    :goto_2
    move v5, v3

    .line 37
    :goto_3
    if-eqz p1, :cond_5

    .line 38
    .line 39
    if-eqz p2, :cond_4

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move v3, v4

    .line 43
    :cond_5
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v0, v2, p1, p2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    .line 67
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorContainer:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    if-eqz p0, :cond_7

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    iget v0, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    .line 92
    .line 93
    iget p3, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    .line 94
    .line 95
    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 96
    .line 97
    .line 98
    :cond_7
    return-void
.end method

.method public final updateVisibilities(Lcom/android/systemui/qs/bar/VideoCallMicModeStates;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isPrerequisiteMet:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isVoIPEnabled:Z

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-boolean p0, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->videoCallEnabled:Z

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 p0, 0x8

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :goto_1
    return-void
.end method
