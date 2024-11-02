.class final enum Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

.field public static final Companion:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$Companion;

.field public static final enum IconFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

.field public static final enum LeftFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

.field public static final enum TitleFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;


# instance fields
.field private final bottom:I

.field private final end:I

.field private final start:I

.field private final top:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 2
    .line 3
    const-string v1, "IconFramePadding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f070aca

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const v5, 0x7f070acd

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v7

    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;-><init>(Ljava/lang/String;IIIII)V

    .line 16
    .line 17
    .line 18
    sput-object v7, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->IconFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 19
    .line 20
    new-instance v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 21
    .line 22
    const-string v9, "LeftFramePadding"

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    const v11, 0x7f070ad0

    .line 26
    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    const v13, 0x7f070acd

    .line 30
    .line 31
    .line 32
    const/4 v14, 0x0

    .line 33
    move-object v8, v0

    .line 34
    invoke-direct/range {v8 .. v14}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;-><init>(Ljava/lang/String;IIIII)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->LeftFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 38
    .line 39
    new-instance v1, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 40
    .line 41
    const-string v16, "TitleFramePadding"

    .line 42
    .line 43
    const/16 v17, 0x2

    .line 44
    .line 45
    const v18, 0x7f070ad6

    .line 46
    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const v20, 0x7f070acd

    .line 51
    .line 52
    .line 53
    const/16 v21, 0x0

    .line 54
    .line 55
    move-object v15, v1

    .line 56
    invoke-direct/range {v15 .. v21}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;-><init>(Ljava/lang/String;IIIII)V

    .line 57
    .line 58
    .line 59
    sput-object v1, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->TitleFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 60
    .line 61
    filled-new-array {v7, v0, v1}, [Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->$VALUES:[Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 66
    .line 67
    new-instance v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$Companion;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->Companion:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$Companion;

    .line 74
    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->start:I

    .line 5
    .line 6
    iput p4, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->top:I

    .line 7
    .line 8
    iput p5, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->end:I

    .line 9
    .line 10
    iput p6, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->bottom:I

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;
    .locals 1

    .line 1
    const-class v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->$VALUES:[Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;-><init>(Landroid/content/res/Resources;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->start:I

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v2, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->top:I

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget v3, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->end:I

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget p0, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->bottom:I

    .line 63
    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Ljava/lang/Number;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
