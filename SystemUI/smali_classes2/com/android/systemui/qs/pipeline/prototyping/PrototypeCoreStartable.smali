.class public final Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final autoAddRepository:Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->autoAddRepository:Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/prototyping/PrototypeCoreStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method
