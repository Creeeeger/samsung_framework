.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field public static final enum DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field public static final enum GET_POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field public static final enum SEND_BUFFERED_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field public static final enum SEND_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;


# instance fields
.field directory:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field domain:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field method:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 2
    .line 3
    const-string v1, "DATA_DELETE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 7
    .line 8
    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 9
    .line 10
    sget-object v13, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    move-object v5, v13

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V

    .line 15
    .line 16
    .line 17
    sput-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 20
    .line 21
    const-string v8, "GET_POLICY"

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 25
    .line 26
    sget-object v11, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DEVICE_CONTROLLER_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 27
    .line 28
    sget-object v12, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 29
    .line 30
    move-object v7, v0

    .line 31
    invoke-direct/range {v7 .. v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->GET_POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 35
    .line 36
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 37
    .line 38
    const-string v8, "SEND_LOG"

    .line 39
    .line 40
    const/4 v9, 0x2

    .line 41
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 42
    .line 43
    sget-object v11, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 44
    .line 45
    move-object v7, v1

    .line 46
    move-object v10, v2

    .line 47
    move-object v12, v13

    .line 48
    invoke-direct/range {v7 .. v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 52
    .line 53
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 54
    .line 55
    const-string v8, "SEND_BUFFERED_LOG"

    .line 56
    .line 57
    const/4 v9, 0x3

    .line 58
    sget-object v11, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 59
    .line 60
    move-object v7, v3

    .line 61
    invoke-direct/range {v7 .. v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V

    .line 62
    .line 63
    .line 64
    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_BUFFERED_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 65
    .line 66
    filled-new-array {v6, v0, v1, v3}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 71
    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->domain:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->directory:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->method:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->method:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->method:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->domain:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->directory:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->directory:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
