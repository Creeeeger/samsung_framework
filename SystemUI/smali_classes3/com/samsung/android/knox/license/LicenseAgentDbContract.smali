.class public final Lcom/samsung/android/knox/license/LicenseAgentDbContract;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final COLUMN_ACTIVATION_TS:Ljava/lang/String; = "TIME"

.field public static final COLUMN_LICENSE_KEY:Ljava/lang/String; = "LICENSE_KEY"

.field public static final COLUMN_LICENSE_STATUS:Ljava/lang/String; = "LICENSE_STATUS"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field public static final COLUMN_PRODUCT_TYPE:Ljava/lang/String; = "PRODUCT_TYPE"

.field public static final COLUMN_SKU:Ljava/lang/String; = "SKU"

.field public static final DB_URI:Landroid/net/Uri;

.field public static final DEFAULT_PROJECTION:[Ljava/lang/String;

.field public static final DEVICE_OWNER_REMOVED:Ljava/lang/String; = "DeviceOwnerRemoved"

.field public static final ELM_REGISTRATION_INTERNAL:Ljava/lang/String; = "ELMRegistrationInternal"

.field public static final GET_ACTIVATION_METHOD:Ljava/lang/String; = "getActivations"

.field public static final GET_ALL_ACTIVATIONS_METHOD:Ljava/lang/String; = "getAllActivations"

.field public static final IS_EULA_ACCEPTED_ON_DEVICE:Ljava/lang/String; = "IsEulaAcceptedOnDevice"

.field public static final KLM_DEACTIVATION_INTERNAL:Ljava/lang/String; = "KLMDeactivationInternal"

.field public static final KLM_REGISTRATION_INTERNAL:Ljava/lang/String; = "KLMRegistrationInternal"

.field public static final LICENSE_VALIDATION_INTERNAL:Ljava/lang/String; = "licenseValidationInternal"

.field public static final PACKAGE_NAME_REMOVED:Ljava/lang/String; = "packageName"

.field public static final PACKAGE_REMOVED_INTERNAL:Ljava/lang/String; = "packageRemovedInternal"

.field public static final PROFILE_OWNER_REMOVED:Ljava/lang/String; = "ProfileOwnerRemoved"


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "content://com.samsung.klmsagent.provider/"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DB_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "PACKAGE_NAME"

    .line 10
    .line 11
    const-string v2, "LICENSE_STATUS"

    .line 12
    .line 13
    const-string v3, "LICENSE_KEY"

    .line 14
    .line 15
    const-string v4, "SKU"

    .line 16
    .line 17
    const-string v5, "PRODUCT_TYPE"

    .line 18
    .line 19
    const-string v6, "TIME"

    .line 20
    .line 21
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
