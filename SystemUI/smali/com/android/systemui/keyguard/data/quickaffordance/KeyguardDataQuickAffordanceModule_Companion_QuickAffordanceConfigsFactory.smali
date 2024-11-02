.class public final Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final cameraProvider:Ljavax/inject/Provider;

.field public final doNotDisturbProvider:Ljavax/inject/Provider;

.field public final flashlightProvider:Ljavax/inject/Provider;

.field public final homeProvider:Ljavax/inject/Provider;

.field public final muteProvider:Ljavax/inject/Provider;

.field public final qrCodeScannerProvider:Ljavax/inject/Provider;

.field public final quickAccessWalletProvider:Ljavax/inject/Provider;

.field public final videoCameraProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->cameraProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->doNotDisturbProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->flashlightProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->homeProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->muteProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->quickAccessWalletProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->qrCodeScannerProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->videoCameraProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    return-void
.end method

.method public static quickAffordanceConfigs(Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/QrCodeScannerKeyguardQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;)Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule;->Companion:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    filled-new-array/range {p0 .. p7}, [Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->cameraProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->doNotDisturbProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->flashlightProvider:Ljavax/inject/Provider;

    .line 20
    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->homeProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    check-cast v4, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->muteProvider:Ljavax/inject/Provider;

    .line 38
    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->quickAccessWalletProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    check-cast v6, Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->qrCodeScannerProvider:Ljavax/inject/Provider;

    .line 56
    .line 57
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    check-cast v7, Lcom/android/systemui/keyguard/data/quickaffordance/QrCodeScannerKeyguardQuickAffordanceConfig;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->videoCameraProvider:Ljavax/inject/Provider;

    .line 65
    .line 66
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    move-object v8, p0

    .line 71
    check-cast v8, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;

    .line 72
    .line 73
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardDataQuickAffordanceModule_Companion_QuickAffordanceConfigsFactory;->quickAffordanceConfigs(Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/QrCodeScannerKeyguardQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
