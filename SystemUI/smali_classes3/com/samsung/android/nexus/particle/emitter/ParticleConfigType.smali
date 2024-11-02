.class public final enum Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

.field public static final enum APPLY_DRAW_MORPHING_BY_SPEED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

.field public static final enum AUTO_ROTATE_ALONG_MOVE_DIRECTION:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

.field public static final enum DISABLE_WHEN_DISAPPEARED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

.field public static final enum DISABLE_WHEN_OUTSIDE:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;


# instance fields
.field final defaultValue:Z

.field idx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 2
    .line 3
    const-string v1, "DISABLE_WHEN_DISAPPEARED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;-><init>(Ljava/lang/String;IZ)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_DISAPPEARED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 13
    .line 14
    const-string v2, "DISABLE_WHEN_OUTSIDE"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_OUTSIDE:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 20
    .line 21
    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 22
    .line 23
    const-string v3, "AUTO_ROTATE_ALONG_MOVE_DIRECTION"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->AUTO_ROTATE_ALONG_MOVE_DIRECTION:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 30
    .line 31
    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 32
    .line 33
    const-string v4, "APPLY_DRAW_MORPHING_BY_SPEED"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->APPLY_DRAW_MORPHING_BY_SPEED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->defaultValue:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    .line 6
    iput-boolean p3, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->defaultValue:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 8
    .line 9
    return-object v0
.end method
