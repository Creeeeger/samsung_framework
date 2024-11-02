.class public final Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;
.super Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

.field public final synthetic val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;->val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFinished(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;->val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;->onFinished(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
