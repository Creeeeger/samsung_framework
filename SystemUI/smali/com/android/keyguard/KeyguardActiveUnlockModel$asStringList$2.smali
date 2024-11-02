.class final Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardActiveUnlockModel;-><init>(JIZZZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardActiveUnlockModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardListenModelKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 4
    .line 5
    iget-wide v1, v1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 16
    .line 17
    iget-wide v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 24
    .line 25
    iget v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userId:I

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 32
    .line 33
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->listening:Z

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 40
    .line 41
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->awakeKeyguard:Z

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 48
    .line 49
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->authInterruptActive:Z

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 56
    .line 57
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->fpLockedOut:Z

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 64
    .line 65
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->primaryAuthRequired:Z

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 72
    .line 73
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->switchingUser:Z

    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 80
    .line 81
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->triggerActiveUnlockForAssistant:Z

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    .line 88
    .line 89
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userCanDismissLockScreen:Z

    .line 90
    .line 91
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
