.class public final enum Landroidx/picker/features/composable/ComposableTypeSet;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/picker/features/composable/ComposableType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/ComposableTypeSet;",
        ">;",
        "Landroidx/picker/features/composable/ComposableType;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum CheckBox:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum CheckBox_Action:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum CheckBox_Expander:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum Radio:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum Radio_Action:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum Switch:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum TextOnly:Landroidx/picker/features/composable/ComposableTypeSet;


# instance fields
.field private final iconFrame:Landroidx/picker/features/composable/icon/IconFrame;

.field private final leftFrame:Landroidx/picker/features/composable/left/LeftFrame;

.field private final titleFrame:Landroidx/picker/features/composable/title/TitleFrame;

.field private final widgetFrame:Landroidx/picker/features/composable/widget/WidgetFrame;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v7, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 2
    .line 3
    const-string v1, "TextOnly"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    sget-object v15, Landroidx/picker/features/composable/icon/IconFrame;->Icon:Landroidx/picker/features/composable/icon/IconFrame;

    .line 8
    .line 9
    sget-object v16, Landroidx/picker/features/composable/title/TitleFrame;->Title:Landroidx/picker/features/composable/title/TitleFrame;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, v7

    .line 13
    move-object v4, v15

    .line 14
    move-object/from16 v5, v16

    .line 15
    .line 16
    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    .line 17
    .line 18
    .line 19
    sput-object v7, Landroidx/picker/features/composable/ComposableTypeSet;->TextOnly:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 20
    .line 21
    new-instance v1, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 22
    .line 23
    const-string v9, "Switch"

    .line 24
    .line 25
    const/4 v10, 0x1

    .line 26
    const/4 v11, 0x0

    .line 27
    sget-object v14, Landroidx/picker/features/composable/widget/WidgetFrame;->Switch:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 28
    .line 29
    move-object v8, v1

    .line 30
    move-object v12, v15

    .line 31
    move-object/from16 v13, v16

    .line 32
    .line 33
    invoke-direct/range {v8 .. v14}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Landroidx/picker/features/composable/ComposableTypeSet;->Switch:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 37
    .line 38
    new-instance v2, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 39
    .line 40
    const-string v9, "AllSwitch"

    .line 41
    .line 42
    const/4 v10, 0x2

    .line 43
    const/4 v12, 0x0

    .line 44
    sget-object v14, Landroidx/picker/features/composable/widget/WidgetFrame;->AllAppsSwitch:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 45
    .line 46
    move-object v8, v2

    .line 47
    invoke-direct/range {v8 .. v14}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    .line 48
    .line 49
    .line 50
    sput-object v2, Landroidx/picker/features/composable/ComposableTypeSet;->AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 51
    .line 52
    new-instance v3, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 53
    .line 54
    const-string v9, "CheckBox"

    .line 55
    .line 56
    const/4 v10, 0x3

    .line 57
    sget-object v0, Landroidx/picker/features/composable/left/LeftFrame;->CheckBox:Landroidx/picker/features/composable/left/LeftFrame;

    .line 58
    .line 59
    const/4 v14, 0x0

    .line 60
    move-object v8, v3

    .line 61
    move-object v11, v0

    .line 62
    move-object v12, v15

    .line 63
    invoke-direct/range {v8 .. v14}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    .line 64
    .line 65
    .line 66
    sput-object v3, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 67
    .line 68
    new-instance v4, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 69
    .line 70
    const-string v9, "CheckBox_Action"

    .line 71
    .line 72
    const/4 v10, 0x4

    .line 73
    sget-object v5, Landroidx/picker/features/composable/widget/WidgetFrame;->Action:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 74
    .line 75
    move-object v8, v4

    .line 76
    move-object v14, v5

    .line 77
    invoke-direct/range {v8 .. v14}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    .line 78
    .line 79
    .line 80
    sput-object v4, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox_Action:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 81
    .line 82
    new-instance v6, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 83
    .line 84
    const-string v9, "CheckBox_Expander"

    .line 85
    .line 86
    const/4 v10, 0x5

    .line 87
    sget-object v14, Landroidx/picker/features/composable/widget/WidgetFrame;->Expander:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 88
    .line 89
    move-object v8, v6

    .line 90
    invoke-direct/range {v8 .. v14}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    .line 91
    .line 92
    .line 93
    sput-object v6, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox_Expander:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 94
    .line 95
    new-instance v17, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 96
    .line 97
    const-string v9, "Radio"

    .line 98
    .line 99
    const/4 v10, 0x6

    .line 100
    sget-object v0, Landroidx/picker/features/composable/left/LeftFrame;->Radio:Landroidx/picker/features/composable/left/LeftFrame;

    .line 101
    .line 102
    const/4 v14, 0x0

    .line 103
    move-object/from16 v8, v17

    .line 104
    .line 105
    move-object v11, v0

    .line 106
    invoke-direct/range {v8 .. v14}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    .line 107
    .line 108
    .line 109
    sput-object v17, Landroidx/picker/features/composable/ComposableTypeSet;->Radio:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 110
    .line 111
    new-instance v18, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 112
    .line 113
    const-string v9, "Radio_Action"

    .line 114
    .line 115
    const/4 v10, 0x7

    .line 116
    move-object/from16 v8, v18

    .line 117
    .line 118
    move-object v14, v5

    .line 119
    invoke-direct/range {v8 .. v14}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    .line 120
    .line 121
    .line 122
    sput-object v18, Landroidx/picker/features/composable/ComposableTypeSet;->Radio_Action:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 123
    .line 124
    move-object v0, v7

    .line 125
    move-object v5, v6

    .line 126
    move-object/from16 v6, v17

    .line 127
    .line 128
    move-object/from16 v7, v18

    .line 129
    .line 130
    filled-new-array/range {v0 .. v7}, [Landroidx/picker/features/composable/ComposableTypeSet;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Landroidx/picker/features/composable/ComposableTypeSet;->$VALUES:[Landroidx/picker/features/composable/ComposableTypeSet;

    .line 135
    .line 136
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/composable/left/LeftFrame;",
            "Landroidx/picker/features/composable/icon/IconFrame;",
            "Landroidx/picker/features/composable/title/TitleFrame;",
            "Landroidx/picker/features/composable/widget/WidgetFrame;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/picker/features/composable/ComposableTypeSet;->leftFrame:Landroidx/picker/features/composable/left/LeftFrame;

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/picker/features/composable/ComposableTypeSet;->iconFrame:Landroidx/picker/features/composable/icon/IconFrame;

    .line 7
    .line 8
    iput-object p5, p0, Landroidx/picker/features/composable/ComposableTypeSet;->titleFrame:Landroidx/picker/features/composable/title/TitleFrame;

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/picker/features/composable/ComposableTypeSet;->widgetFrame:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/ComposableTypeSet;
    .locals 1

    .line 1
    const-class v0, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/picker/features/composable/ComposableTypeSet;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/ComposableTypeSet;
    .locals 1

    .line 1
    sget-object v0, Landroidx/picker/features/composable/ComposableTypeSet;->$VALUES:[Landroidx/picker/features/composable/ComposableTypeSet;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/picker/features/composable/ComposableTypeSet;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIconFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->iconFrame:Landroidx/picker/features/composable/icon/IconFrame;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->leftFrame:Landroidx/picker/features/composable/left/LeftFrame;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitleFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->titleFrame:Landroidx/picker/features/composable/title/TitleFrame;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWidgetFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->widgetFrame:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 2
    .line 3
    return-object p0
.end method
