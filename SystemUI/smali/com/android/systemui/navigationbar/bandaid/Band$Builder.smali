.class public final Lcom/android/systemui/navigationbar/bandaid/Band$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public afterAction:Ljava/util/function/Consumer;

.field public bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

.field public moduleDependencies:Ljava/util/List;

.field public patchAction:Ljava/util/function/Function;

.field public priority:I

.field public runeDependency:Z

.field public sPluginTag:Ljava/lang/String;

.field public final targetDisplayId:I

.field public targetEvents:Ljava/util/List;

.field public targetModules:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetDisplayId:I

    .line 10
    .line 11
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    .line 21
    .line 22
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder$patchAction$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/Band$Builder$patchAction$1;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->sPluginTag:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/navigationbar/bandaid/Band;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
