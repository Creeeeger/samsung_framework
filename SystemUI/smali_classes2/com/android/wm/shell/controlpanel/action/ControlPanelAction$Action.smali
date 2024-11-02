.class public final enum Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 2
    .line 3
    const-string v1, "None"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 10
    .line 11
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 12
    .line 13
    const-string v2, "QuickPanel"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 20
    .line 21
    new-instance v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 22
    .line 23
    const-string v3, "ScreenCapture"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 30
    .line 31
    new-instance v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 32
    .line 33
    const-string v4, "BrightnessControl"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 40
    .line 41
    new-instance v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 42
    .line 43
    const-string v5, "VolumeControl"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 50
    .line 51
    new-instance v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 52
    .line 53
    const-string v6, "SplitScreen"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7, v7}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 60
    .line 61
    new-instance v6, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 62
    .line 63
    const-string v7, "FlexPanelSettings"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8, v8}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 70
    .line 71
    new-instance v7, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 72
    .line 73
    const-string v8, "EditPanel"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9, v9}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 80
    .line 81
    new-instance v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 82
    .line 83
    const-string v9, "DragCircle"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10, v10}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 91
    .line 92
    new-instance v9, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 93
    .line 94
    const-string v10, "TouchPad"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v9, v10, v11, v11}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 102
    .line 103
    filled-new-array/range {v0 .. v9}, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->$VALUES:[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 108
    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->$VALUES:[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->value:I

    .line 2
    .line 3
    return p0
.end method
