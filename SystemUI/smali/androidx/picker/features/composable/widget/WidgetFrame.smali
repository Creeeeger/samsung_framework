.class public final enum Landroidx/picker/features/composable/widget/WidgetFrame;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/picker/features/composable/ComposableFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/widget/WidgetFrame;",
        ">;",
        "Landroidx/picker/features/composable/ComposableFrame;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/widget/WidgetFrame;

.field public static final enum Action:Landroidx/picker/features/composable/widget/WidgetFrame;

.field public static final enum AllAppsSwitch:Landroidx/picker/features/composable/widget/WidgetFrame;

.field public static final enum Expander:Landroidx/picker/features/composable/widget/WidgetFrame;

.field public static final enum Switch:Landroidx/picker/features/composable/widget/WidgetFrame;


# instance fields
.field private final layoutResId:I

.field private final viewHolderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/picker/features/composable/ComposableViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 2
    .line 3
    const-class v1, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;

    .line 4
    .line 5
    const-string v2, "Switch"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const v4, 0x7f0d0285

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/picker/features/composable/widget/WidgetFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/picker/features/composable/widget/WidgetFrame;->Switch:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 15
    .line 16
    new-instance v1, Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const-class v3, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;

    .line 20
    .line 21
    const-string v5, "AllAppsSwitch"

    .line 22
    .line 23
    invoke-direct {v1, v5, v2, v4, v3}, Landroidx/picker/features/composable/widget/WidgetFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Landroidx/picker/features/composable/widget/WidgetFrame;->AllAppsSwitch:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 27
    .line 28
    new-instance v2, Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 29
    .line 30
    const v3, 0x7f0d0280

    .line 31
    .line 32
    .line 33
    const-class v4, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;

    .line 34
    .line 35
    const-string v5, "Action"

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    invoke-direct {v2, v5, v6, v3, v4}, Landroidx/picker/features/composable/widget/WidgetFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Landroidx/picker/features/composable/widget/WidgetFrame;->Action:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 42
    .line 43
    new-instance v3, Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 44
    .line 45
    const v4, 0x7f0d0282

    .line 46
    .line 47
    .line 48
    const-class v5, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;

    .line 49
    .line 50
    const-string v6, "Expander"

    .line 51
    .line 52
    const/4 v7, 0x3

    .line 53
    invoke-direct {v3, v6, v7, v4, v5}, Landroidx/picker/features/composable/widget/WidgetFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    sput-object v3, Landroidx/picker/features/composable/widget/WidgetFrame;->Expander:Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 57
    .line 58
    filled-new-array {v0, v1, v2, v3}, [Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Landroidx/picker/features/composable/widget/WidgetFrame;->$VALUES:[Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 63
    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/picker/features/composable/ComposableViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/picker/features/composable/widget/WidgetFrame;->layoutResId:I

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/picker/features/composable/widget/WidgetFrame;->viewHolderClass:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/widget/WidgetFrame;
    .locals 1

    .line 1
    const-class v0, Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/widget/WidgetFrame;
    .locals 1

    .line 1
    sget-object v0, Landroidx/picker/features/composable/widget/WidgetFrame;->$VALUES:[Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLayoutResId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/picker/features/composable/widget/WidgetFrame;->layoutResId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getViewHolderClass()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/widget/WidgetFrame;->viewHolderClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method
