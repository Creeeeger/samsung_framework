.class public final Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sCount:I

.field public static final sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->values()[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    sput v0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sCount:I

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
