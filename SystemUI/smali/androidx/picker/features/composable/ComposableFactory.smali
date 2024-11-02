.class public final Landroidx/picker/features/composable/ComposableFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final composableStrategy:Landroidx/picker/features/composable/ComposableStrategy;

.field public final converter:Landroidx/picker/features/composable/ComposableBitConverter;

.field public final viewTypeRange:Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Landroidx/picker/features/composable/ComposableStrategy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/features/composable/ComposableFactory;->composableStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    .line 5
    .line 6
    new-instance v0, Landroidx/picker/features/composable/ComposableBitConverter;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/picker/features/composable/ComposableBitConverter;-><init>(Landroidx/picker/features/composable/ComposableStrategy;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/picker/features/composable/ComposableFactory;->converter:Landroidx/picker/features/composable/ComposableBitConverter;

    .line 12
    .line 13
    new-instance p1, Lkotlin/ranges/IntRange;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iget v0, v0, Landroidx/picker/features/composable/ComposableBitConverter;->maxBit:I

    .line 17
    .line 18
    invoke-direct {p1, v1, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/picker/features/composable/ComposableFactory;->viewTypeRange:Lkotlin/ranges/IntRange;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final getComposableType(I)Landroidx/picker/features/composable/ComposableType;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/picker/features/composable/ComposableFactory;->viewTypeRange:Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    iget v1, v0, Lkotlin/ranges/IntProgression;->first:I

    .line 4
    .line 5
    iget v2, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    if-gt v1, p1, :cond_0

    .line 12
    .line 13
    move v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v4

    .line 16
    :goto_0
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableFactory;->converter:Landroidx/picker/features/composable/ComposableBitConverter;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/picker/features/composable/ComposableBitConverter;->cachedMapByViewType:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/picker/features/composable/ComposableType;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v4, p1}, Landroidx/picker/features/composable/ComposableBitConverter;->decodeAsFrame(II)Landroidx/picker/features/composable/ComposableFrame;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v3, p1}, Landroidx/picker/features/composable/ComposableBitConverter;->decodeAsFrame(II)Landroidx/picker/features/composable/ComposableFrame;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-virtual {p0, v3, p1}, Landroidx/picker/features/composable/ComposableBitConverter;->decodeAsFrame(II)Landroidx/picker/features/composable/ComposableFrame;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-virtual {p0, v4, p1}, Landroidx/picker/features/composable/ComposableBitConverter;->decodeAsFrame(II)Landroidx/picker/features/composable/ComposableFrame;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object v4, Landroidx/picker/features/composable/ComposableType;->Companion:Landroidx/picker/features/composable/ComposableType$Companion;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v4, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;

    .line 62
    .line 63
    invoke-direct {v4, v1, v2, v3, p0}, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;-><init>(Landroidx/picker/features/composable/ComposableFrame;Landroidx/picker/features/composable/ComposableFrame;Landroidx/picker/features/composable/ComposableFrame;Landroidx/picker/features/composable/ComposableFrame;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-object v1, v4

    .line 74
    :goto_1
    return-object v1

    .line 75
    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo v1, "viewType must be in Composable View Type range "

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final inflateComposableView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d0288

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p2}, Landroidx/picker/features/composable/ComposableFactory;->getComposableType(I)Landroidx/picker/features/composable/ComposableType;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object p2, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->Companion:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$Companion;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Landroidx/picker/features/composable/ComposableType;->getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    sget-object p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->LeftFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p0}, Landroidx/picker/features/composable/ComposableType;->getIconFrame()Landroidx/picker/features/composable/ComposableFrame;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    sget-object p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->IconFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->TitleFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->applyToView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method
