.class public final Lcom/android/keyguard/KeyguardStatusAreaView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TRANSLATE_X_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATE_Y_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATE_Y_CLOCK_SIZE:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;


# instance fields
.field public translateXFromAod:F

.field public translateXFromClockDesign:F

.field public translateXFromUnfold:F

.field public translateYFromClockDesign:F

.field public translateYFromClockSize:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_CLOCK_DESIGN$1;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_CLOCK_DESIGN$1;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 15
    .line 16
    const v2, 0x7f0a0c28

    .line 17
    .line 18
    .line 19
    const v3, 0x7f0a0c2a

    .line 20
    .line 21
    .line 22
    const v4, 0x7f0a0c29

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 29
    .line 30
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;-><init>()V

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a0c25

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0a0c27

    .line 39
    .line 40
    .line 41
    const v3, 0x7f0a0c26

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(IIILandroid/util/Property;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_Y_CLOCK_SIZE$1;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_Y_CLOCK_SIZE$1;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 53
    .line 54
    const v2, 0x7f0a0c2e

    .line 55
    .line 56
    .line 57
    const v3, 0x7f0a0c30

    .line 58
    .line 59
    .line 60
    const v4, 0x7f0a0c2f

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 64
    .line 65
    .line 66
    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_SIZE:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 67
    .line 68
    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_Y_CLOCK_DESIGN$1;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_Y_CLOCK_DESIGN$1;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 74
    .line 75
    const v2, 0x7f0a0c2b

    .line 76
    .line 77
    .line 78
    const v3, 0x7f0a0c2d

    .line 79
    .line 80
    .line 81
    const v4, 0x7f0a0c2c

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 85
    .line 86
    .line 87
    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 88
    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
