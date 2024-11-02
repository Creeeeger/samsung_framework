.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final instance:Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
