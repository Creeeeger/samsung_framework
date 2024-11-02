.class public final Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$4;
.super Lcom/samsung/android/knox/license/ILicenseResultCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->deActivateLicense(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

.field public final synthetic val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$4;->this$0:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$4;->val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/knox/license/ILicenseResultCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$4;->val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/LicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
