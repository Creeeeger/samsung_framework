.class public final Lcom/android/systemui/charging/WiredChargingRippleController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final normalizedPortPosX:F

.field public final normalizedPortPosY:F

.field public final rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    .line 7
    .line 8
    iput-object p8, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 9
    .line 10
    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object p2, Lcom/android/systemui/flags/Flags;->CHARGING_RIPPLE:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 16
    .line 17
    check-cast p4, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 18
    .line 19
    invoke-virtual {p4, p2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 p3, 0x0

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const-string/jumbo p2, "persist.debug.suppress-charging-ripple"

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const p4, 0x7f070aae

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iput p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->normalizedPortPosX:F

    .line 44
    .line 45
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const p4, 0x7f070aaf

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iput p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->normalizedPortPosY:F

    .line 57
    .line 58
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 p4, -0x1

    .line 64
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    .line 66
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    .line 68
    const/4 p4, 0x3

    .line 69
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 70
    .line 71
    const/4 p4, -0x3

    .line 72
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 73
    .line 74
    const/16 p4, 0x7d9

    .line 75
    .line 76
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 77
    .line 78
    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 79
    .line 80
    .line 81
    const-string p3, "Wired Charging Animation"

    .line 82
    .line 83
    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const/16 p3, 0x18

    .line 87
    .line 88
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 94
    .line 95
    new-instance p2, Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 96
    .line 97
    const/4 p3, 0x0

    .line 98
    invoke-direct {p2, p5, p3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    .line 100
    .line 101
    sget-object p3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setupShader(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    .line 104
    .line 105
    .line 106
    iput-object p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 107
    .line 108
    new-instance p3, Lcom/android/systemui/charging/WiredChargingRippleController$1;

    .line 109
    .line 110
    invoke-direct {p3, p0}, Lcom/android/systemui/charging/WiredChargingRippleController$1;-><init>(Lcom/android/systemui/charging/WiredChargingRippleController;)V

    .line 111
    .line 112
    .line 113
    const-string p0, "charging-ripple"

    .line 114
    .line 115
    invoke-virtual {p1, p0, p3}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 116
    .line 117
    .line 118
    const p0, 0x1010435

    .line 119
    .line 120
    .line 121
    invoke-static {p0, p5}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    const/16 p1, 0x73

    .line 130
    .line 131
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public static synthetic getRippleView$annotations()V
    .locals 0

    .line 1
    return-void
.end method
