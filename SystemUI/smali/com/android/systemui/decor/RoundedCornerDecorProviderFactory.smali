.class public final Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/RoundedCornerResDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getHasProviders()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    .line 6
    .line 7
    const v2, 0x7f0a08ee

    .line 8
    .line 9
    .line 10
    const v3, 0x7f0a08ed

    .line 11
    .line 12
    .line 13
    const v4, 0x7f0a08f1

    .line 14
    .line 15
    .line 16
    const v5, 0x7f0a08f0

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x3

    .line 20
    const/4 v7, 0x2

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 28
    .line 29
    invoke-direct {v0, v5, v9, v8, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 33
    .line 34
    invoke-direct {v1, v4, v9, v7, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 38
    .line 39
    invoke-direct {v4, v3, v6, v8, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 43
    .line 44
    invoke-direct {v3, v2, v6, v7, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 45
    .line 46
    .line 47
    filled-new-array {v0, v1, v4, v3}, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-eqz v0, :cond_1

    .line 57
    .line 58
    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 59
    .line 60
    invoke-direct {v0, v5, v9, v8, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 64
    .line 65
    invoke-direct {v1, v4, v9, v7, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 66
    .line 67
    .line 68
    filled-new-array {v0, v1}, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    if-eqz v1, :cond_2

    .line 78
    .line 79
    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 80
    .line 81
    invoke-direct {v0, v3, v6, v8, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 85
    .line 86
    invoke-direct {v1, v2, v6, v7, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 87
    .line 88
    .line 89
    filled-new-array {v0, v1}, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 99
    .line 100
    :goto_0
    return-object p0
.end method
