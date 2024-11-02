.class public final enum Landroidx/picker/features/composable/icon/IconFrame;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/picker/features/composable/ComposableFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/icon/IconFrame;",
        ">;",
        "Landroidx/picker/features/composable/ComposableFrame;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/icon/IconFrame;

.field public static final enum Icon:Landroidx/picker/features/composable/icon/IconFrame;


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
    .locals 5

    .line 1
    new-instance v0, Landroidx/picker/features/composable/icon/IconFrame;

    .line 2
    .line 3
    const v1, 0x7f0d0283

    .line 4
    .line 5
    .line 6
    const-class v2, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;

    .line 7
    .line 8
    const-string v3, "Icon"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/picker/features/composable/icon/IconFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/picker/features/composable/icon/IconFrame;->Icon:Landroidx/picker/features/composable/icon/IconFrame;

    .line 15
    .line 16
    filled-new-array {v0}, [Landroidx/picker/features/composable/icon/IconFrame;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/picker/features/composable/icon/IconFrame;->$VALUES:[Landroidx/picker/features/composable/icon/IconFrame;

    .line 21
    .line 22
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
    iput p3, p0, Landroidx/picker/features/composable/icon/IconFrame;->layoutResId:I

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/picker/features/composable/icon/IconFrame;->viewHolderClass:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/icon/IconFrame;
    .locals 1

    .line 1
    const-class v0, Landroidx/picker/features/composable/icon/IconFrame;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/picker/features/composable/icon/IconFrame;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/icon/IconFrame;
    .locals 1

    .line 1
    sget-object v0, Landroidx/picker/features/composable/icon/IconFrame;->$VALUES:[Landroidx/picker/features/composable/icon/IconFrame;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/picker/features/composable/icon/IconFrame;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLayoutResId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/picker/features/composable/icon/IconFrame;->layoutResId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getViewHolderClass()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/icon/IconFrame;->viewHolderClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method
