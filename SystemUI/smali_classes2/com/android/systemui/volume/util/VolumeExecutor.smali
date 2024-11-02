.class public final Lcom/android/systemui/volume/util/VolumeExecutor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/util/VolumeExecutor;

.field public static final sExecutor$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/volume/util/VolumeExecutor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/volume/util/VolumeExecutor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/volume/util/VolumeExecutor;->INSTANCE:Lcom/android/systemui/volume/util/VolumeExecutor;

    .line 7
    .line 8
    sget-object v0, Lcom/android/systemui/volume/util/VolumeExecutor$sExecutor$2;->INSTANCE:Lcom/android/systemui/volume/util/VolumeExecutor$sExecutor$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/systemui/volume/util/VolumeExecutor;->sExecutor$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
