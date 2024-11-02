.class final enum Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 12
    .line 13
    const-string v2, "UNKNOWN_ERROR"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 22
    .line 23
    const-string v3, "STORAGE_FULL"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 30
    .line 31
    const-string v4, "INVALID_DATA"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5, v5}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 38
    .line 39
    new-instance v4, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 40
    .line 41
    const/4 v5, 0x7

    .line 42
    const-string v6, "PARTIAL_SUCCESS"

    .line 43
    .line 44
    const/4 v7, 0x4

    .line 45
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->value:I

    .line 2
    .line 3
    return p0
.end method
