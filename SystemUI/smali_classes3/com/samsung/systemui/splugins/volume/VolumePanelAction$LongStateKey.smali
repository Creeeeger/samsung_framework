.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LongStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

.field public static final enum SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;


# instance fields
.field private final fieldName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 2
    .line 3
    filled-new-array {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "systemTimeNow"

    .line 5
    .line 6
    const-string v3, "SYSTEM_TIME_NOW"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->fieldName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getFieldName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->fieldName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
