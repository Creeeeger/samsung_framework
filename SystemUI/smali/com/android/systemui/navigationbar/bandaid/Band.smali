.class public final Lcom/android/systemui/navigationbar/bandaid/Band;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final afterAction:Ljava/util/function/Consumer;

.field public final bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

.field public final moduleDependencies:Ljava/util/List;

.field public final patchAction:Ljava/util/function/Function;

.field public final priority:I

.field public final runeDependency:Z

.field public final sPluginTag:Ljava/lang/String;

.field public final targetDisplayId:I

.field public final targetEvents:Ljava/util/List;

.field public final targetModules:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;)V
    .locals 11

    .line 13
    iget-object v1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 14
    iget-boolean v2, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 15
    iget v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetDisplayId:I

    .line 16
    iget-object v4, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 17
    iget-object v5, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 18
    iget-object v6, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 19
    iget v7, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    .line 20
    iget-object v8, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 21
    iget-object v9, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 22
    iget-object v10, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->sPluginTag:Ljava/lang/String;

    move-object v0, p0

    .line 23
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Lcom/android/systemui/navigationbar/bandaid/BandAid;ZILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 24
    sget-boolean p0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/BandAid;ZILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/bandaid/BandAid;",
            "ZI",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;I",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/navigationbar/bandaid/Band$Kit;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/navigationbar/bandaid/Band$Kit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->runeDependency:Z

    .line 5
    iput p3, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetDisplayId:I

    .line 6
    iput-object p4, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetEvents:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetModules:Ljava/util/List;

    .line 8
    iput-object p6, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->moduleDependencies:Ljava/util/List;

    .line 9
    iput p7, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->priority:I

    .line 10
    iput-object p8, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->patchAction:Ljava/util/function/Function;

    .line 11
    iput-object p9, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->afterAction:Ljava/util/function/Consumer;

    .line 12
    iput-object p10, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->sPluginTag:Ljava/lang/String;

    return-void
.end method
