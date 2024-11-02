.class public final Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;

.field public static final animatorMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;->animatorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
