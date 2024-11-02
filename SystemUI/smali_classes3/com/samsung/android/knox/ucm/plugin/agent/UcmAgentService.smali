.class public abstract Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_UCM_PLUGIN_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_PLUGIN_STATUS"

.field public static final ADMIN_UID:Ljava/lang/String; = "adminUid"

.field public static final AID:Ljava/lang/String; = "aid"

.field public static final ALIASES:Ljava/lang/String; = "aliases"

.field public static final ALLOWED_PACKAGES:Ljava/lang/String; = "allowed_packages"

.field public static final ALLOW_ALL:I = 0x1

.field public static final API_FAILED:I = -0x1

.field public static final API_RESULT:Ljava/lang/String; = "api_result"

.field public static final API_SUCCESS:I = 0x0

.field public static final AUTH_ALPHA_NUMERIC:I = 0x1

.field public static final AUTH_MAX_COUNT:Ljava/lang/String; = "maxAuthCnt"

.field public static final AUTH_MODE:Ljava/lang/String; = "authMode"

.field public static final AUTH_NUMERIC:I = 0x0

.field public static final AUTH_UNKNOWN:I = -0x1

.field public static final BLOCK_ALL:I = 0x2

.field public static final BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_APPLET_INSTALLATION_STATUS:Ljava/lang/String; = "applet_installation_status"

.field public static final BUNDLE_EXTRA_ESE_CHIP_VENDOR:Ljava/lang/String; = "applet_ese_chip_vendor"

.field public static final BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final CS_NAME:Ljava/lang/String; = "csName"

.field public static final ERROR_ALIAS_NOT_FOUND:I = 0x11

.field public static final ERROR_APDU_CREATION:I = 0x1000100

.field public static final ERROR_APPLET_INSTALLATION:I = 0x9000000

.field public static final ERROR_APPLET_INSTALL_LOCATION:I = 0x19

.field public static final ERROR_APPLET_MAX_ERROR_CODE:I = 0x8010000

.field public static final ERROR_APPLET_UNKNOWN:I = 0x8000000

.field public static final ERROR_BAD_APPLET_RESPONSE:I = 0x1000200

.field public static final ERROR_BAD_PADDING_EXCEPTION:I = 0x10b

.field public static final ERROR_CANNOT_CHANGE_ODE_CONFIGURATION:I = 0xc000300

.field public static final ERROR_CERTFACTORY_INSTANCE_NOT_FOUND:I = 0xc

.field public static final ERROR_CERTIFICATE_ENCODING_EXCEPTION:I = 0x106

.field public static final ERROR_CERTIFICATE_EXCEPTION:I = 0x105

.field public static final ERROR_CIPHER_INSTANCE_NOT_FOUND:I = 0xb

.field public static final ERROR_CORRUPTED_CS_RESPONSE:I = 0x17

.field public static final ERROR_CREDENTIAL_STORAGE_ACCESS_DENIED_BY_ADMIN_POLICY:I = 0xf

.field public static final ERROR_CRYPTO_ENGINE_EXCEPTION:I = 0x101

.field public static final ERROR_DATABASE_COMPROMISED:I = 0x26

.field public static final ERROR_EMPTY_CERTIFICATE_CHAIN:I = 0x9

.field public static final ERROR_EMPTY_PARAMETER:I = 0x10

.field public static final ERROR_ESECOMM_TRANSMIT_FAILURE:I = 0x15

.field public static final ERROR_FAILED_TO_GET_READER_FOR_STORAGE:I = 0x2000502

.field public static final ERROR_FILE_NOT_FOUND_EXCEPTION:I = 0x10e

.field public static final ERROR_GET_READERS_ILLEGAL_STATE_EXCEPTION:I = 0x2000102

.field public static final ERROR_GET_READERS_NULL_POINTER_EXCEPTION:I = 0x2000101

.field public static final ERROR_ILLEGAL_BLOCK_SIZE_EXCEPTION:I = 0x10c

.field public static final ERROR_INCORRECT_CARD:I = 0x24

.field public static final ERROR_INCORRECT_PIN:I = 0x20

.field public static final ERROR_INCORRECT_PUK:I = 0x21

.field public static final ERROR_INTERNAL_COMMUNICATION:I = 0x1000400

.field public static final ERROR_INTERNAL_UCM_FRMWK_END:I = 0x1fff

.field public static final ERROR_INTERNAL_UCM_FRMWK_START:I = 0x1000

.field public static final ERROR_INVALID_ALGORTHM_PARAMETER_EXCEPTION:I = 0x103

.field public static final ERROR_INVALID_INPUT:I = 0x4

.field public static final ERROR_INVALID_KEY_SPEC_EXCEPTION:I = 0x107

.field public static final ERROR_INVALID_ODE_CONFIGURATION:I = 0xc000200

.field public static final ERROR_IO_EXCEPTION:I = 0x10d

.field public static final ERROR_KEYSTORE_ENTRY_NOT_FOUND:I = 0x8

.field public static final ERROR_KEYSTORE_EXCEPTION:I = 0x10a

.field public static final ERROR_KEYSTORE_TYPE:I = 0x7

.field public static final ERROR_MISSING_DEPENDENCY:I = 0x25

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NON_UCS_PLUGINSPI:I = 0x13

.field public static final ERROR_NO_ADAPTER_FOUND:I = 0x18

.field public static final ERROR_NO_ADAPTER_RESPONSE:I = 0x14

.field public static final ERROR_NO_PLUGIN_AGENT_FOUND:I = 0xe

.field public static final ERROR_NO_PLUGIN_RESPONSE:I = 0xd

.field public static final ERROR_NO_SESSION_AVAILABLE:I = 0x2000501

.field public static final ERROR_NO_SUCH_ALGORITHM_EXCEPTION:I = 0x102

.field public static final ERROR_NO_SUCH_PROVIDER_EXCEPTION:I = 0x108

.field public static final ERROR_OMA_TRANSMIT_FAILURE:I = 0x16

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2000303

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_ILLEGAL_STATE_EXCEPTION:I = 0x2000302

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_IO_EXCEPTION:I = 0x2000301

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_NO_SUCH_ELEMENT_EXCEPTION:I = 0x2000305

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_SECURITY_EXCEPTION:I = 0x2000304

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_UNKNOWN:I = 0x2000306

.field public static final ERROR_OPEN_SESSION_IO_EXCEPTION:I = 0x2000201

.field public static final ERROR_OUT_OF_BOUND:I = 0x6

.field public static final ERROR_PLUGIN_ALREADY_USED:I = 0x22

.field public static final ERROR_PRIVATEKEY_ENTRY_NOT_FOUND:I = 0xa

.field public static final ERROR_SCP_CREATE_CHANNEL_FAILED:I = 0x3000003

.field public static final ERROR_SCP_DECRYPTION_FAILED:I = 0x3000002

.field public static final ERROR_SCP_ENCRYPTION_FAILED:I = 0x3000001

.field public static final ERROR_SCP_NULL_RESPONSE_RECV:I = 0x3000004

.field public static final ERROR_SCP_UNKNOWN:I = 0x3000000

.field public static final ERROR_SHORT_BUFFER_EXCEPTION:I = 0x104

.field public static final ERROR_SIGNATURE_EXCEPTION:I = 0x110

.field public static final ERROR_SMARTCARD_UNAVAILABLE:I = 0x1000300

.field public static final ERROR_STORAGE_FULL:I = 0x5

.field public static final ERROR_TRANSMIT_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2000403

.field public static final ERROR_TRANSMIT_ILLEGAL_STATE_EXCEPTION:I = 0x2000402

.field public static final ERROR_TRANSMIT_IO_EXCEPTION:I = 0x2000401

.field public static final ERROR_TRANSMIT_NULL_POINTER_EXCEPTION:I = 0x2000405

.field public static final ERROR_TRANSMIT_SECURITY_EXCEPTION:I = 0x2000404

.field public static final ERROR_TRANSMIT_UNKNOWN:I = 0x2000406

.field public static final ERROR_UNDEFINED_EXCEPTION:I = 0x10f

.field public static final ERROR_UNKNOWN:I = 0x12

.field public static final ERROR_UNREADABLE_ODE_CONFIGURATION:I = 0xc000100

.field public static final ERROR_UNRECOVERABLE_KEY_EXCEPTION:I = 0x109

.field public static final ERROR_UNRECOVERABLE_STATE:I = 0x23

.field public static final ERROR_UNSUPPORTED_ALGORITHM:I = 0x2

.field public static final ERROR_UNSUPPORTED_OPERATION:I = 0x3

.field public static final ERROR_UNSUPPORTED_PARAMETER:I = 0x1

.field public static final EVENT_ADMIN_LICENSE_EXPIRED:I = 0xd

.field public static final EVENT_ADMIN_LICENSE_RENEWED:I = 0xe

.field public static final EVENT_BOOT_COMPLETED:I = 0x11

.field public static final EVENT_CONTAINER_LOCKED:I = 0x14

.field public static final EVENT_CONTAINER_UNLOCKED:I = 0x15

.field public static final EVENT_DEVICE_LOCKED:I = 0xf

.field public static final EVENT_DEVICE_UNLOCKED:I = 0x10

.field public static final EVENT_FACTORY_RESET:I = 0x65

.field public static final EVENT_KEYGUARD_SET:I = 0x12

.field public static final EVENT_KEYGUARD_UNSET:I = 0x13

.field public static final EVENT_PACKAGE_UNINSTALL:I = 0xc

.field public static final EVENT_PLUGIN_UNMANAGED:I = 0xa

.field public static final EVENT_USER_REMOVED:I = 0xb

.field private static KEY_EXTRA_AAD:Ljava/lang/String; = "extra_aad"

.field private static KEY_EXTRA_IV:Ljava/lang/String; = "extra_iv"

.field private static KEY_EXTRA_TAG_LEN:Ljava/lang/String; = "extra_tag_length"

.field public static final LOCKSCREEN_MESSAGE:Ljava/lang/String; = "lockscreen_message"

.field public static final LOCK_STATE:Ljava/lang/String; = "state"

.field public static final MAX_PIN_LENGTH:Ljava/lang/String; = "maxPinLength"

.field public static final MAX_PUK_LENGTH:Ljava/lang/String; = "maxPukLength"

.field public static final MIN_PIN_LENGTH:Ljava/lang/String; = "minPinLength"

.field public static final MIN_PUK_LENGTH:Ljava/lang/String; = "minPukLength"

.field public static final MISC_INFO:Ljava/lang/String; = "miscInfo"

.field public static final PACKAGE_ACCESS_TYPE:Ljava/lang/String; = "package_access_type"

.field public static final PACKAGE_UID:Ljava/lang/String; = "packageUid"

.field public static final PARTIALLY:I = 0x3

.field public static final PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final PIN_CACHE_TIMEOUT:I = 0x1

.field public static final PLUGIN_BOOLEAN_RESPONSE:Ljava/lang/String; = "booleanresponse"

.field public static final PLUGIN_BUNDLE_RESPONSE:Ljava/lang/String; = "bundleresponse"

.field public static final PLUGIN_BYTEARRAY_RESPONSE:Ljava/lang/String; = "bytearrayresponse"

.field public static final PLUGIN_DATA_STRING_RESPONSE:Ljava/lang/String; = "RESPONSE_DATA"

.field public static final PLUGIN_ERROR_CODE:Ljava/lang/String; = "errorresponse"

.field public static final PLUGIN_INT_RESPONSE:Ljava/lang/String; = "intresponse"

.field public static final PLUGIN_KEY_TYPE_PRIVATE:I = 0x2

.field public static final PLUGIN_KEY_TYPE_RESPONSE:Ljava/lang/String; = "keytyperesponse"

.field public static final PLUGIN_KEY_TYPE_SECRET:I = 0x1

.field public static final PLUGIN_KEY_TYPE_UNKNOWN:I = -0x1

.field public static final PLUGIN_PUBLIC_KEY:Ljava/lang/String; = "generatedpublickey"

.field public static final PLUGIN_SECRET_KEY:Ljava/lang/String; = "generatedsecretkey"

.field public static final PLUGIN_STRINGARRAY_RESPONSE:Ljava/lang/String; = "stringarrayresponse"

.field public static final PLUGIN_STRING_RESPONSE:Ljava/lang/String; = "stringresponse"

.field public static final PLUGIN_TOASTMSG_RESPONSE:Ljava/lang/String; = "toastmessageresponse"

.field public static final REMAIN_COUNT:Ljava/lang/String; = "remainCnt"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final SCP_TYPE:Ljava/lang/String; = "scptype"

.field public static final STATE_BLOCKED:I = 0x85

.field public static final STATE_LOCKED:I = 0x84

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNLOCKED:I = 0x83

.field public static final STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final STORAGE_TYPE:Ljava/lang/String; = "storagetype"

.field public static final SUPPORTS_ODE:Ljava/lang/String; = "supportsode"

.field private static final TAG:Ljava/lang/String; = "UcmAgentService"

.field public static final TA_COMMAND_ID:Ljava/lang/String; = "tacommandid"

.field public static final TA_DATA:Ljava/lang/String; = "tadata"

.field public static final TA_DATA_LENGTH:Ljava/lang/String; = "tadatalength"

.field public static final TA_ERROR_CODE:Ljava/lang/String; = "taerrorcode"

.field public static final TA_ERROR_DESCRIPTION:Ljava/lang/String; = "taerrordescription"

.field public static final TA_MAGIC_NUMBER:Ljava/lang/String; = "tamagicnumber"

.field public static final TA_VERSION:Ljava/lang/String; = "taversion"

.field public static final USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field private mProvider:Ljava/security/Provider;


# direct methods
.method public static bridge synthetic -$$Nest$mdecrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->deleteKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mencrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->encrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mencrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgenerateKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateKey(Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgenerateKeyPair(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgenerateSecureRandom(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateSecureRandom(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCertificateChain(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetKeyType(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mimportKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mimportKeyPair(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minstallCertificateIfSupported(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->installCertificateIfSupported(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmac(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mac(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msaw(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msign(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 10
    .line 11
    return-void
.end method

.method private final decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    const-string v1, "bytearrayresponse"

    .line 4
    .line 5
    const-string v2, "errorresponse"

    .line 6
    .line 7
    const-string v3, "decrypt. base algorithm = "

    .line 8
    .line 9
    const-string v4, "decrypt"

    .line 10
    .line 11
    const-string v5, "UcmAgentService"

    .line 12
    .line 13
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/16 v4, 0x10

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    const-string p1, "decrypt. property is null"

    .line 21
    .line 22
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const-string v6, "decrypt "

    .line 31
    .line 32
    const-string v7, ",uid: "

    .line 33
    .line 34
    invoke-static {v6, p1, v7}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v7, "callerUid"

    .line 39
    .line 40
    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v7, ", caller: "

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    if-eqz p2, :cond_c

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v6, "data length "

    .line 71
    .line 72
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    array-length v6, p2

    .line 76
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    new-instance v4, Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 89
    .line 90
    .line 91
    :try_start_0
    const-string v6, "KNOX"

    .line 92
    .line 93
    iget-object v7, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 94
    .line 95
    invoke-static {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    new-instance v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 103
    .line 104
    const-string v8, "ownerUid"

    .line 105
    .line 106
    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const-string v9, "resource"

    .line 111
    .line 112
    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    const-string v10, "extraArgs"

    .line 117
    .line 118
    invoke-virtual {p4, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 126
    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    invoke-virtual {v6, p1, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-nez p1, :cond_2

    .line 134
    .line 135
    const-string p1, "decrypt. getEntry null "

    .line 136
    .line 137
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_1

    .line 145
    .line 146
    const/16 p1, 0x8

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :catch_0
    move-exception p0

    .line 159
    goto/16 :goto_7

    .line 160
    .line 161
    :catch_1
    move-exception p0

    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :catch_2
    move-exception p0

    .line 165
    goto/16 :goto_9

    .line 166
    .line 167
    :catch_3
    move-exception p0

    .line 168
    goto/16 :goto_a

    .line 169
    .line 170
    :catch_4
    move-exception p0

    .line 171
    goto/16 :goto_b

    .line 172
    .line 173
    :catch_5
    move-exception p0

    .line 174
    goto/16 :goto_c

    .line 175
    .line 176
    :catch_6
    move-exception p0

    .line 177
    goto/16 :goto_d

    .line 178
    .line 179
    :catch_7
    move-exception p0

    .line 180
    goto/16 :goto_e

    .line 181
    .line 182
    :catch_8
    move-exception p0

    .line 183
    goto/16 :goto_f

    .line 184
    .line 185
    :catch_9
    move-exception p0

    .line 186
    goto/16 :goto_10

    .line 187
    .line 188
    :catch_a
    move-exception p0

    .line 189
    goto/16 :goto_11

    .line 190
    .line 191
    :catch_b
    move-exception p0

    .line 192
    goto/16 :goto_12

    .line 193
    .line 194
    :catch_c
    move-exception p0

    .line 195
    goto/16 :goto_13

    .line 196
    .line 197
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    const/4 v8, 0x0

    .line 202
    aget-object v7, v7, v8

    .line 203
    .line 204
    iget-object v8, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 205
    .line 206
    invoke-static {p3, v8}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Cipher;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v8, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    .line 211
    .line 212
    .line 213
    new-instance v9, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    const/16 v9, 0xa

    .line 233
    .line 234
    if-nez v3, :cond_9

    .line 235
    .line 236
    const-string v3, "AES"

    .line 237
    .line 238
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-nez v3, :cond_3

    .line 243
    .line 244
    goto/16 :goto_4

    .line 245
    .line 246
    :cond_3
    check-cast p1, Ljava/security/KeyStore$SecretKeyEntry;

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-nez p1, :cond_5

    .line 253
    .line 254
    const-string p1, "decrypt. getSecretKey null"

    .line 255
    .line 256
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_4

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    :goto_1
    invoke-direct {p0, v9}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    :cond_5
    const-string p0, "GCM"

    .line 276
    .line 277
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p3

    .line 281
    const/4 v0, 0x1

    .line 282
    aget-object p3, p3, v0

    .line 283
    .line 284
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result p0

    .line 288
    if-eqz p0, :cond_6

    .line 289
    .line 290
    sget-object p3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result p3

    .line 296
    if-eqz p3, :cond_6

    .line 297
    .line 298
    sget-object p3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_IV:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result p3

    .line 304
    if-eqz p3, :cond_6

    .line 305
    .line 306
    new-instance p3, Ljavax/crypto/spec/GCMParameterSpec;

    .line 307
    .line 308
    sget-object v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    sget-object v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_IV:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-direct {p3, v0, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_6
    sget-object p3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_IV:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result p3

    .line 330
    if-eqz p3, :cond_7

    .line 331
    .line 332
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    .line 333
    .line 334
    sget-object v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_IV:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-direct {p3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 341
    .line 342
    .line 343
    :goto_2
    const/4 v0, 0x2

    .line 344
    goto :goto_3

    .line 345
    :cond_7
    const/4 v0, 0x2

    .line 346
    const/4 p3, 0x0

    .line 347
    :goto_3
    invoke-virtual {v8, v0, p1, p3}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 348
    .line 349
    .line 350
    if-eqz p0, :cond_8

    .line 351
    .line 352
    sget-object p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_AAD:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    if-eqz p0, :cond_8

    .line 359
    .line 360
    sget-object p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_AAD:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-virtual {v8, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->updateAAD([B)V

    .line 367
    .line 368
    .line 369
    :cond_8
    invoke-virtual {v8, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    goto :goto_6

    .line 374
    :cond_9
    :goto_4
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    if-nez p1, :cond_b

    .line 381
    .line 382
    const-string p1, "decrypt. getPrivateKey null"

    .line 383
    .line 384
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-nez p1, :cond_a

    .line 392
    .line 393
    goto :goto_5

    .line 394
    :cond_a
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 395
    .line 396
    .line 397
    move-result v9

    .line 398
    :goto_5
    invoke-direct {p0, v9}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    return-object p0

    .line 403
    :cond_b
    const/4 p0, 0x2

    .line 404
    invoke-virtual {v8, p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/Key;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v8, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    :goto_6
    invoke-virtual {v4, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getErrorStatus()I

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .line 420
    .line 421
    return-object v4

    .line 422
    :goto_7
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 423
    .line 424
    .line 425
    const p0, 0x2000402

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_14

    .line 432
    .line 433
    :goto_8
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 434
    .line 435
    .line 436
    const/4 p0, 0x3

    .line 437
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    goto :goto_14

    .line 441
    :goto_9
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .line 442
    .line 443
    .line 444
    const/16 p0, 0x103

    .line 445
    .line 446
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    .line 448
    .line 449
    goto :goto_14

    .line 450
    :goto_a
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 451
    .line 452
    .line 453
    const/4 p0, 0x2

    .line 454
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    .line 456
    .line 457
    goto :goto_14

    .line 458
    :goto_b
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 459
    .line 460
    .line 461
    const/16 p0, 0x108

    .line 462
    .line 463
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    .line 465
    .line 466
    goto :goto_14

    .line 467
    :goto_c
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 468
    .line 469
    .line 470
    const/16 p0, 0x10c

    .line 471
    .line 472
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    .line 474
    .line 475
    goto :goto_14

    .line 476
    :goto_d
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 477
    .line 478
    .line 479
    const/16 p0, 0x10b

    .line 480
    .line 481
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    .line 483
    .line 484
    goto :goto_14

    .line 485
    :goto_e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 486
    .line 487
    .line 488
    const/16 p0, 0x10d

    .line 489
    .line 490
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 491
    .line 492
    .line 493
    goto :goto_14

    .line 494
    :goto_f
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 495
    .line 496
    .line 497
    const/16 p0, 0x105

    .line 498
    .line 499
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    .line 501
    .line 502
    goto :goto_14

    .line 503
    :goto_10
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 504
    .line 505
    .line 506
    const/16 p0, 0x10a

    .line 507
    .line 508
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    .line 510
    .line 511
    goto :goto_14

    .line 512
    :goto_11
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    .line 513
    .line 514
    .line 515
    const/16 p0, 0x109

    .line 516
    .line 517
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    .line 519
    .line 520
    goto :goto_14

    .line 521
    :goto_12
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 522
    .line 523
    .line 524
    const/16 p0, 0x107

    .line 525
    .line 526
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    .line 528
    .line 529
    goto :goto_14

    .line 530
    :goto_13
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 531
    .line 532
    .line 533
    const/4 p0, 0x2

    .line 534
    invoke-virtual {v4, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    :goto_14
    const/4 p0, 0x0

    .line 538
    invoke-virtual {v4, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 539
    .line 540
    .line 541
    return-object v4

    .line 542
    :cond_c
    const-string p1, "decrypt. data is null"

    .line 543
    .line 544
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    invoke-direct {p0, v4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 548
    .line 549
    .line 550
    move-result-object p0

    .line 551
    return-object p0
.end method

.method private final deleteKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    const-string v0, "booleanresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "UCMERRORTESTING: @UcmAgentService responding to deleteKey with error code ks.getErrorStatus() = "

    .line 6
    .line 7
    const-string v3, "deleteKey"

    .line 8
    .line 9
    const-string v4, "UcmAgentService"

    .line 10
    .line 11
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p1, "deleteKey. property is null"

    .line 17
    .line 18
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string v3, "deleteKey "

    .line 27
    .line 28
    const-string v5, ", uid: "

    .line 29
    .line 30
    invoke-static {v3, p1, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v5, "callerUid"

    .line 35
    .line 36
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ", caller: "

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    const/16 v6, 0x10a

    .line 69
    .line 70
    :try_start_0
    const-string v7, "KNOX"

    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 73
    .line 74
    invoke-static {v7, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    new-instance v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 82
    .line 83
    const-string v8, "ownerUid"

    .line 84
    .line 85
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    const-string v9, "resource"

    .line 90
    .line 91
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    const-string v10, "extraArgs"

    .line 96
    .line 97
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-direct {v7, v8, v9, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 p1, 0x1

    .line 111
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    return-object v3

    .line 141
    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    const/4 p0, 0x3

    .line 146
    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catch_1
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :catch_2
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    const/16 p0, 0x108

    .line 163
    .line 164
    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :catch_3
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :catch_4
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    const/16 p0, 0x10d

    .line 181
    .line 182
    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :catch_5
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :catch_6
    move-exception p0

    .line 195
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    :goto_0
    const/4 p0, 0x0

    .line 202
    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    .line 204
    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to deleteKey with EXCEPTION error code  = "

    .line 208
    .line 209
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    return-object v3
.end method

.method private final encrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "bytearrayresponse"

    const-string v1, "errorresponse"

    const-string v2, "encrypt"

    const-string v3, "UcmAgentService"

    .line 2
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x10

    if-nez p4, :cond_0

    const-string p1, "encrypt. property is null"

    .line 3
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v4, "encrypt: "

    const-string v5, ", algorithm: "

    const-string v6, ", uid: "

    .line 5
    invoke-static {v4, p1, v5, p3, v6}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callerUid"

    .line 6
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "data length "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_0
    const-string v6, "KNOX"

    .line 9
    iget-object v7, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v6

    .line 10
    invoke-virtual {v6, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 11
    new-instance v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string v8, "ownerUid"

    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "resource"

    .line 12
    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "extraArgs"

    .line 13
    invoke-virtual {p4, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 14
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 15
    invoke-virtual {v6, p1, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "encrypt. getEntry null"

    .line 16
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    .line 18
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 19
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0xa

    const/4 v9, 0x1

    if-nez v7, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AES/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 20
    check-cast p1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "encrypt. getSecretKey null!"

    .line 21
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v8

    .line 23
    :goto_1
    invoke-direct {p0, v8}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 24
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {p3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Cipher;

    move-result-object p0

    .line 25
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0, v9, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "GCM"

    const-string v3, "/"

    .line 27
    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v9

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    sget-object p1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_AAD:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    sget-object p1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_AAD:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->updateAAD([B)V

    .line 30
    :cond_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object p1

    goto :goto_3

    .line 31
    :cond_6
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "encrypt. getPrivateKey null "

    .line 32
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v8

    .line 34
    :goto_2
    invoke-direct {p0, v8}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p3, "RSA/ECB/PKCS1Padding"

    .line 35
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {p3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Cipher;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v9, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/Key;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 39
    :goto_3
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getErrorStatus()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    .line 42
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_1
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 44
    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_2
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    .line 46
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_3
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    const/16 p0, 0x10c

    .line 48
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_4
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const/16 p0, 0x10b

    .line 50
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_5
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    .line 52
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_6
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    .line 54
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_7
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    .line 56
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_8
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const/16 p0, 0x109

    .line 58
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_9
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const/16 p0, 0x107

    .line 60
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_a
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 62
    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    :goto_4
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2

    :cond_9
    const-string p1, "encrypt. data is null"

    .line 64
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final generateKey(Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 1
    const-string v0, "booleanresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "UCMERRORTESTING: @UcmAgentService responding to generateKey : "

    .line 6
    .line 7
    const-string v3, "generateKey"

    .line 8
    .line 9
    const-string v4, "UcmAgentService"

    .line 10
    .line 11
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "KeyGenParameterSpec is null"

    .line 17
    .line 18
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v5, "generateKey "

    .line 29
    .line 30
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v5, p1, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, ", uid: "

    .line 39
    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, "callerUid"

    .line 44
    .line 45
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, ", caller: "

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    new-instance v3, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x2

    .line 79
    :try_start_0
    iget-object v8, p1, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 82
    .line 83
    invoke-static {v8, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->setProperty(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-nez p0, :cond_1

    .line 98
    .line 99
    move p0, v6

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 p0, 0x1

    .line 102
    :goto_0
    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    return-object v3

    .line 121
    :catch_0
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :catch_1
    move-exception p0

    .line 124
    goto :goto_2

    .line 125
    :catch_2
    move-exception p0

    .line 126
    goto :goto_3

    .line 127
    :goto_1
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    const/16 p0, 0x103

    .line 131
    .line 132
    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :goto_3
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    :goto_4
    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    const-string p0, "bytearrayresponse"

    .line 153
    .line 154
    invoke-virtual {v3, p0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 155
    .line 156
    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to generateKey with EXCEPTION error code  = "

    .line 160
    .line 161
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    return-object v3
.end method

.method private final generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const-string v1, "bytearrayresponse"

    .line 4
    .line 5
    const-string v2, "errorresponse"

    .line 6
    .line 7
    const-string v3, "generateKeyPair"

    .line 8
    .line 9
    const-string v4, "UcmAgentService"

    .line 10
    .line 11
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "generateKeyPair. property is null"

    .line 17
    .line 18
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    const-string v3, "callerUid"

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    const-string v5, "extraArgs"

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    if-nez v12, :cond_1

    .line 39
    .line 40
    const-string v0, "generateKeyPair. options is null"

    .line 41
    .line 42
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_1
    new-instance v13, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v10, 0x1

    .line 59
    move-object v5, v14

    .line 60
    move-object/from16 v6, p1

    .line 61
    .line 62
    move/from16 v7, p3

    .line 63
    .line 64
    move v8, v11

    .line 65
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;IIZII)V

    .line 66
    .line 67
    .line 68
    move-object/from16 v5, p2

    .line 69
    .line 70
    iput-object v5, v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 71
    .line 72
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    iput v5, v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    .line 79
    .line 80
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    invoke-virtual {v12, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    iput-boolean v5, v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsRandomizedEncryptionRequired:Z

    .line 88
    .line 89
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String;

    .line 90
    .line 91
    const-string v6, ""

    .line 92
    .line 93
    invoke-virtual {v12, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iput-object v5, v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    .line 98
    .line 99
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iput-object v5, v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 106
    .line 107
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_DIGESTS:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iput-object v5, v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 114
    .line 115
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iput-object v5, v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 122
    .line 123
    iput-object v12, v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOptions:Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->build()Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v7, "generateKeyPair "

    .line 132
    .line 133
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v7, v5, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v7, ",uid: "

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, ", caller: "

    .line 154
    .line 155
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    const/16 v3, 0x103

    .line 173
    .line 174
    const/4 v4, 0x2

    .line 175
    const/4 v6, 0x0

    .line 176
    :try_start_0
    iget-object v7, v5, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 177
    .line 178
    move-object v8, p0

    .line 179
    iget-object v8, v8, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 180
    .line 181
    invoke-static {v7, v8}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->setProperty(Landroid/os/Bundle;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_2

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    goto :goto_0

    .line 202
    :cond_2
    move-object v0, v6

    .line 203
    :goto_0
    if-nez v0, :cond_3

    .line 204
    .line 205
    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v13, v1, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 209
    .line 210
    .line 211
    return-object v13

    .line 212
    :cond_3
    const-string v5, "generatedpublickey"

    .line 213
    .line 214
    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->getErrorStatus()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .line 223
    .line 224
    return-object v13

    .line 225
    :catch_0
    move-exception v0

    .line 226
    goto :goto_1

    .line 227
    :catch_1
    move-exception v0

    .line 228
    goto :goto_2

    .line 229
    :catch_2
    move-exception v0

    .line 230
    goto :goto_3

    .line 231
    :catch_3
    move-exception v0

    .line 232
    goto :goto_4

    .line 233
    :catch_4
    move-exception v0

    .line 234
    goto :goto_5

    .line 235
    :goto_1
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 236
    .line 237
    .line 238
    const/4 v0, 0x3

    .line 239
    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :goto_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 251
    .line 252
    .line 253
    const/16 v0, 0x108

    .line 254
    .line 255
    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :goto_4
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :goto_5
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    :goto_6
    invoke-virtual {v13, v1, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 273
    .line 274
    .line 275
    return-object v13
.end method

.method private final generateSecureRandom(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    const-string v0, "bytearrayresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "generateSecureRandom"

    .line 6
    .line 7
    const-string v3, "UcmAgentService"

    .line 8
    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p1, "generateSecureRandom. property is null"

    .line 15
    .line 16
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x10

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string v2, "generateSecureRandom "

    .line 27
    .line 28
    const-string v4, ",uid: "

    .line 29
    .line 30
    invoke-static {v2, p1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "callerUid"

    .line 35
    .line 36
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, ", caller: "

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v2, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x2

    .line 68
    :try_start_0
    const-string v4, "SHA1PRNG"

    .line 69
    .line 70
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 71
    .line 72
    invoke-static {v4, p0}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->setProperty(Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->generateSeed(I)[B

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->getErrorStatus()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x3

    .line 99
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_1
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_2
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    const/16 p0, 0x108

    .line 116
    .line 117
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_3
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    :goto_0
    const/4 p0, 0x0

    .line 129
    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 130
    .line 131
    .line 132
    return-object v2
.end method

.method private final getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .line 1
    const-string v0, "bytearrayresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "getCertificateChain"

    .line 6
    .line 7
    const-string v3, "UcmAgentService"

    .line 8
    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p1, "getCertificateChain. property is null"

    .line 15
    .line 16
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x10

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string v2, "getCertificateChain "

    .line 27
    .line 28
    const-string v4, ",uid:"

    .line 29
    .line 30
    invoke-static {v2, p1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "callerUid"

    .line 35
    .line 36
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, ", caller: "

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v2, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v4, 0x2

    .line 68
    :try_start_0
    const-string v5, "KNOX"

    .line 69
    .line 70
    iget-object v6, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 71
    .line 72
    invoke-static {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 80
    .line 81
    const-string v7, "ownerUid"

    .line 82
    .line 83
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const-string v8, "resource"

    .line 88
    .line 89
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    const-string v9, "extraArgs"

    .line 94
    .line 95
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {v6, v7, v8, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    array-length p2, p1

    .line 112
    if-nez p2, :cond_1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 116
    .line 117
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    .line 119
    .line 120
    array-length p2, p1

    .line 121
    const/4 v3, 0x0

    .line 122
    :goto_0
    if-ge v3, p2, :cond_2

    .line 123
    .line 124
    aget-object v6, p1, v3

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {p0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    return-object v2

    .line 151
    :cond_3
    :goto_1
    const-string p1, "getCertificateChain empty"

    .line 152
    .line 153
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 161
    .line 162
    .line 163
    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-object p0

    .line 165
    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catch_1
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    const/16 p0, 0x108

    .line 178
    .line 179
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catch_2
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    const/4 p0, 0x3

    .line 188
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catch_3
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    const/16 p0, 0x10d

    .line 197
    .line 198
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :catch_4
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :catch_5
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    const/16 p0, 0x105

    .line 215
    .line 216
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :catch_6
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    const/16 p0, 0x106

    .line 225
    .line 226
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :catch_7
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    const/16 p0, 0x10a

    .line 235
    .line 236
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    :goto_2
    const/4 p0, 0x0

    .line 240
    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 241
    .line 242
    .line 243
    return-object v2
.end method

.method private final getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13

    .line 1
    const-string v0, "getKeyType"

    .line 2
    .line 3
    const-string v1, "UcmAgentService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const-string p1, "getKeyType. property is null"

    .line 11
    .line 12
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x10

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string v0, "getKeyType: "

    .line 23
    .line 24
    const-string v2, ", uid: "

    .line 25
    .line 26
    invoke-static {v0, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "callerUid"

    .line 31
    .line 32
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", caller: "

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v2, "stringarrayresponse"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "booleanresponse"

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    const/4 v5, -0x1

    .line 75
    const-string v6, "keytyperesponse"

    .line 76
    .line 77
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    const-string p0, "getKeyType. aliases is null"

    .line 83
    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_1
    new-instance v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 89
    .line 90
    const-string v7, "ownerUid"

    .line 91
    .line 92
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    const-string v8, "resource"

    .line 97
    .line 98
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    const-string v9, "extraArgs"

    .line 103
    .line 104
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    array-length v7, v2

    .line 112
    :goto_0
    const-string v8, "errorresponse"

    .line 113
    .line 114
    if-ge v4, v7, :cond_6

    .line 115
    .line 116
    aget-object v9, v2, v4

    .line 117
    .line 118
    if-eqz v9, :cond_5

    .line 119
    .line 120
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_5

    .line 125
    .line 126
    :try_start_0
    const-string v9, "KNOX"

    .line 127
    .line 128
    iget-object v10, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 129
    .line 130
    invoke-static {v9, v10}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v9, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 138
    .line 139
    .line 140
    const/4 v10, 0x0

    .line 141
    invoke-virtual {v9, p1, v10}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    if-nez v10, :cond_2

    .line 146
    .line 147
    const-string v9, "getKeyType. key is null"

    .line 148
    .line 149
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_2
    const/4 v11, 0x1

    .line 154
    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    .line 156
    .line 157
    const-string v11, "stringresponse"

    .line 158
    .line 159
    invoke-interface {v10}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    instance-of v11, v10, Ljavax/crypto/SecretKey;

    .line 174
    .line 175
    if-eqz v11, :cond_3

    .line 176
    .line 177
    const/4 v10, 0x1

    .line 178
    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    instance-of v10, v10, Ljava/security/PrivateKey;

    .line 183
    .line 184
    if-eqz v10, :cond_4

    .line 185
    .line 186
    const/4 v10, 0x2

    .line 187
    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v11, "UCMERRORTESTING: @UcmAgentService responding to getKeyType with error code ks.getErrorStatus() = "

    .line 196
    .line 197
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :catch_0
    move-exception v9

    .line 216
    invoke-virtual {v9}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    const/16 v9, 0x109

    .line 220
    .line 221
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :catch_1
    move-exception v9

    .line 226
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    const/16 v9, 0x10d

    .line 230
    .line 231
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :catch_2
    move-exception v9

    .line 236
    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 237
    .line 238
    .line 239
    const/4 v9, 0x2

    .line 240
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :catch_3
    move-exception v9

    .line 245
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 246
    .line 247
    .line 248
    const/16 v9, 0x105

    .line 249
    .line 250
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :catch_4
    move-exception v9

    .line 255
    invoke-virtual {v9}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 256
    .line 257
    .line 258
    const/16 v9, 0x10a

    .line 259
    .line 260
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to getKeyType with EXCEPTION error code  = "

    .line 270
    .line 271
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    return-object v0
.end method

.method private final importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    .line 1
    const-string v0, "booleanresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "UCMERRORTESTING: @UcmAgentService responding to importKey with error code ks.getErrorStatus() = "

    .line 6
    .line 7
    const-string v3, "importKey"

    .line 8
    .line 9
    const-string v4, "UcmAgentService"

    .line 10
    .line 11
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p1, "importKey. property is null"

    .line 17
    .line 18
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string v3, "secret_key"

    .line 27
    .line 28
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljavax/crypto/SecretKey;

    .line 33
    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    new-instance v5, Landroid/security/keystore/KeyProtection$Builder;

    .line 47
    .line 48
    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-direct {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 55
    .line 56
    .line 57
    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    filled-new-array {v6}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 76
    .line 77
    .line 78
    :cond_2
    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    filled-new-array {v6}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 97
    .line 98
    .line 99
    :cond_3
    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    .line 100
    .line 101
    const/4 v7, 0x1

    .line 102
    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const-string v6, "importKey: "

    .line 114
    .line 115
    const-string v8, ", uid: "

    .line 116
    .line 117
    invoke-static {v6, p1, v8}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const-string v8, "callerUid"

    .line 122
    .line 123
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v8, ", caller: "

    .line 131
    .line 132
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    new-instance v6, Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 152
    .line 153
    .line 154
    :try_start_0
    const-string v8, "KNOX"

    .line 155
    .line 156
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 157
    .line 158
    invoke-static {v8, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    new-instance v8, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 166
    .line 167
    const-string v9, "ownerUid"

    .line 168
    .line 169
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    const-string v10, "resource"

    .line 174
    .line 175
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    const-string v11, "extraArgs"

    .line 180
    .line 181
    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {v8, v9, v10, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v8}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 189
    .line 190
    .line 191
    new-instance p2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 192
    .line 193
    invoke-direct {p2, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1, p2, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .line 227
    .line 228
    return-object v6

    .line 229
    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 231
    .line 232
    .line 233
    const/16 p0, 0x10d

    .line 234
    .line 235
    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    goto :goto_0

    .line 239
    :catch_1
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 241
    .line 242
    .line 243
    const/4 p0, 0x2

    .line 244
    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :catch_2
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    const/16 p0, 0x105

    .line 253
    .line 254
    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :catch_3
    move-exception p0

    .line 259
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 260
    .line 261
    .line 262
    const/16 p0, 0x10a

    .line 263
    .line 264
    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    :goto_0
    const/4 p0, 0x0

    .line 268
    invoke-virtual {v6, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    .line 270
    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to importKey with EXCEPTION error code  = "

    .line 274
    .line 275
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    return-object v6

    .line 293
    :cond_4
    :goto_1
    const-string p1, "importKey. SecretKey is null or property doesn\'t have purpose"

    .line 294
    .line 295
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    return-object p0
.end method

.method private final importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    const-string v0, "booleanresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "UCMERRORTESTING: @UcmAgentService responding to importKeyPair with error code ks.getErrorStatus() = "

    .line 6
    .line 7
    const-string v3, "importKeyPair"

    .line 8
    .line 9
    const-string v4, "UcmAgentService"

    .line 10
    .line 11
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    const-string p1, "importKeyPair. property is null"

    .line 17
    .line 18
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/16 p1, 0x10

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    .line 29
    .line 30
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-direct {v3, v5}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    filled-new-array {v5}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    filled-new-array {v5}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 79
    .line 80
    .line 81
    :cond_2
    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v5, "importKeyPair "

    .line 96
    .line 97
    const-string v7, ",uid: "

    .line 98
    .line 99
    invoke-static {v5, p1, v7}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v7, "callerUid"

    .line 104
    .line 105
    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v7, ", caller: "

    .line 113
    .line 114
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    new-instance v5, Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 134
    .line 135
    .line 136
    :try_start_0
    const-string v7, "X.509"

    .line 137
    .line 138
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 143
    .line 144
    invoke-direct {v8, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    check-cast p3, Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    new-array v7, v7, [Ljava/security/cert/Certificate;

    .line 158
    .line 159
    invoke-interface {p3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    check-cast p3, [Ljava/security/cert/Certificate;

    .line 164
    .line 165
    const-string v7, "KNOX"

    .line 166
    .line 167
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 168
    .line 169
    invoke-static {v7, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 174
    .line 175
    .line 176
    new-instance v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 177
    .line 178
    const-string v8, "ownerUid"

    .line 179
    .line 180
    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    const-string v9, "resource"

    .line 185
    .line 186
    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    const-string v10, "extraArgs"

    .line 191
    .line 192
    invoke-virtual {p4, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 200
    .line 201
    .line 202
    if-eqz p2, :cond_3

    .line 203
    .line 204
    const-string v7, "algorithm"

    .line 205
    .line 206
    const-string v8, "RSA"

    .line 207
    .line 208
    invoke-virtual {p4, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p4

    .line 212
    invoke-static {p4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 213
    .line 214
    .line 215
    move-result-object p4

    .line 216
    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 217
    .line 218
    invoke-direct {v7, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p4, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    goto :goto_0

    .line 226
    :cond_3
    const/4 p2, 0x0

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    check-cast p2, Ljava/security/PrivateKey;

    .line 232
    .line 233
    :goto_0
    new-instance p4, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 234
    .line 235
    invoke-direct {p4, p2, p3}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1, p4, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 269
    .line 270
    return-object v5

    .line 271
    :catch_0
    move-exception p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 273
    .line 274
    .line 275
    const/4 p0, 0x3

    .line 276
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    goto :goto_1

    .line 280
    :catch_1
    move-exception p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 282
    .line 283
    .line 284
    const/4 p0, 0x2

    .line 285
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :catch_2
    move-exception p0

    .line 290
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 291
    .line 292
    .line 293
    const/16 p0, 0x108

    .line 294
    .line 295
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    goto :goto_1

    .line 299
    :catch_3
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    .line 301
    .line 302
    .line 303
    const/16 p0, 0x109

    .line 304
    .line 305
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :catch_4
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    .line 311
    .line 312
    .line 313
    const/16 p0, 0x107

    .line 314
    .line 315
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    goto :goto_1

    .line 319
    :catch_5
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 321
    .line 322
    .line 323
    const/16 p0, 0x10d

    .line 324
    .line 325
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    goto :goto_1

    .line 329
    :catch_6
    move-exception p0

    .line 330
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 331
    .line 332
    .line 333
    const/4 p0, 0x2

    .line 334
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :catch_7
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    const/16 p0, 0x105

    .line 343
    .line 344
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    .line 346
    .line 347
    goto :goto_1

    .line 348
    :catch_8
    move-exception p0

    .line 349
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 350
    .line 351
    .line 352
    const/16 p0, 0x10a

    .line 353
    .line 354
    invoke-virtual {v5, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    :goto_1
    const/4 p0, 0x0

    .line 358
    invoke-virtual {v5, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    .line 360
    .line 361
    new-instance p0, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to importKeyPair with EXCEPTION error code  = "

    .line 364
    .line 365
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    return-object v5
.end method

.method private final installCertificateIfSupported(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    const-string v0, "booleanresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "installCertificateIfSupported"

    .line 6
    .line 7
    const-string v3, "UcmAgentService"

    .line 8
    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    const-string p1, "installCertificateIfSupported. property is null"

    .line 15
    .line 16
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x10

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string v2, "installCertificateIfSupported: "

    .line 27
    .line 28
    const-string v4, ", uid: "

    .line 29
    .line 30
    invoke-static {v2, p1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "callerUid"

    .line 35
    .line 36
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, ", caller: "

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v2, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    :try_start_0
    const-string v4, "KNOX"

    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 70
    .line 71
    invoke-static {v4, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 79
    .line 80
    invoke-direct {v4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p0, v4, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :cond_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_3

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    instance-of v6, v5, Ljava/security/PrivateKey;

    .line 118
    .line 119
    if-eqz v6, :cond_1

    .line 120
    .line 121
    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    if-eqz p2, :cond_2

    .line 126
    .line 127
    array-length p3, p2

    .line 128
    if-eqz p3, :cond_2

    .line 129
    .line 130
    new-instance p3, Landroid/security/keystore/KeyProtection$Builder;

    .line 131
    .line 132
    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result p4

    .line 138
    invoke-direct {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    new-instance p4, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 146
    .line 147
    check-cast v5, Ljava/security/PrivateKey;

    .line 148
    .line 149
    invoke-direct {p4, v5, p2}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1, p4, p3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 157
    .line 158
    const-string p1, "Certificate chain empty"

    .line 159
    .line 160
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 165
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    return-object v2

    .line 176
    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    const/16 p0, 0x109

    .line 181
    .line 182
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :catch_1
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    const/16 p0, 0x10a

    .line 191
    .line 192
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catch_2
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 198
    .line 199
    .line 200
    const/16 p0, 0x10d

    .line 201
    .line 202
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :catch_3
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 208
    .line 209
    .line 210
    const/4 p0, 0x2

    .line 211
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :catch_4
    move-exception p0

    .line 216
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    const/16 p0, 0x105

    .line 220
    .line 221
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    :goto_1
    const/4 p0, 0x0

    .line 225
    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to installCertificateIfSupported with EXCEPTION error code  = "

    .line 231
    .line 232
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    return-object v2
.end method

.method private final mac(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .line 1
    const-string v0, "bytearrayresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "mac"

    .line 6
    .line 7
    const-string v3, "UcmAgentService"

    .line 8
    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    const-string p1, "mac. property is null"

    .line 17
    .line 18
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string v4, "mac "

    .line 27
    .line 28
    const-string v5, ", uid: "

    .line 29
    .line 30
    invoke-static {v4, p1, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "callerUid"

    .line 35
    .line 36
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ", caller: "

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "data length "

    .line 67
    .line 68
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    array-length v4, p2

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v2, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    :try_start_0
    const-string v5, "KNOX"

    .line 89
    .line 90
    iget-object v6, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 91
    .line 92
    invoke-static {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    new-instance v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 100
    .line 101
    const-string v7, "ownerUid"

    .line 102
    .line 103
    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    const-string v8, "resource"

    .line 108
    .line 109
    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    const-string v9, "extraArgs"

    .line 114
    .line 115
    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, p1, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_2

    .line 130
    .line 131
    const-string p1, "mac. getEntry null "

    .line 132
    .line 133
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_1

    .line 141
    .line 142
    const/16 p1, 0x8

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :cond_2
    check-cast p1, Ljava/security/KeyStore$SecretKeyEntry;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-nez p1, :cond_4

    .line 161
    .line 162
    const-string p1, "mac. getSecretKey null "

    .line 163
    .line 164
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_3

    .line 172
    .line 173
    const/16 p1, 0xa

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 186
    .line 187
    invoke-static {p3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Mac;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->setProperty(Landroid/os/Bundle;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->init(Ljavax/crypto/SecretKey;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 195
    .line 196
    .line 197
    array-length p1, p2

    .line 198
    const/4 p3, 0x0

    .line 199
    invoke-virtual {p0, p2, p3, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->update([BII)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->doFinal()[B

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->getErrorStatus()I

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    return-object v2

    .line 217
    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    .line 220
    .line 221
    const/16 p0, 0x10d

    .line 222
    .line 223
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :catch_1
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 229
    .line 230
    .line 231
    const/16 p0, 0x105

    .line 232
    .line 233
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :catch_2
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    const/16 p0, 0x109

    .line 242
    .line 243
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :catch_3
    move-exception p0

    .line 248
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 249
    .line 250
    .line 251
    const/4 p0, 0x2

    .line 252
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :catch_4
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 258
    .line 259
    .line 260
    const/16 p0, 0x108

    .line 261
    .line 262
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :catch_5
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 268
    .line 269
    .line 270
    const/16 p0, 0x10a

    .line 271
    .line 272
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :catch_6
    move-exception p0

    .line 277
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .line 278
    .line 279
    .line 280
    const/16 p0, 0x103

    .line 281
    .line 282
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :catch_7
    move-exception p0

    .line 287
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 288
    .line 289
    .line 290
    const/16 p0, 0x107

    .line 291
    .line 292
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    :goto_2
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 296
    .line 297
    .line 298
    return-object v2

    .line 299
    :cond_5
    const-string p1, "mac. data is null"

    .line 300
    .line 301
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    return-object p0
.end method

.method private responseErrorWithBoolean()Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private responseErrorWithBoolean(I)Landroid/os/Bundle;
    .locals 2

    .line 2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private responseErrorWithNullBytes(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance p0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "bytearrayresponse"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 10
    .line 11
    .line 12
    const-string v0, "errorresponse"

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method private final saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .line 1
    const-string v0, "saw"

    .line 2
    .line 3
    const-string v1, "UcmAgentService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "stringarrayresponse"

    .line 15
    .line 16
    const-string v4, "errorresponse"

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string p0, "saw. property is null"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 p0, 0x10

    .line 29
    .line 30
    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v6, "saw uid:"

    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v6, "callerUid"

    .line 42
    .line 43
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, ", caller: "

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    :try_start_0
    const-string v6, "KNOX"

    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 73
    .line 74
    invoke-static {v6, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    new-instance v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 82
    .line 83
    const-string v7, "ownerUid"

    .line 84
    .line 85
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const-string v8, "resource"

    .line 90
    .line 91
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    const-string v9, "extraArgs"

    .line 96
    .line 97
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v6, v7, v8, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    new-instance v6, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_1

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    new-array p1, p1, [Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, [Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v6, "UCMERRORTESTING: @UcmAgentService responding to saw with error code ks.getErrorStatus() = "

    .line 162
    .line 163
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :catch_1
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    const/16 p0, 0x108

    .line 202
    .line 203
    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :catch_2
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    const/4 p0, 0x3

    .line 212
    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :catch_3
    move-exception p0

    .line 217
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    .line 219
    .line 220
    const/16 p0, 0x10d

    .line 221
    .line 222
    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :catch_4
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :catch_5
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 236
    .line 237
    .line 238
    const/16 p0, 0x105

    .line 239
    .line 240
    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :catch_6
    move-exception p0

    .line 245
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 246
    .line 247
    .line 248
    const/16 p0, 0x10a

    .line 249
    .line 250
    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to saw with EXCEPTION error code  = "

    .line 259
    .line 260
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    return-object v0
.end method

.method private final sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    const-string v0, "bytearrayresponse"

    .line 2
    .line 3
    const-string v1, "errorresponse"

    .line 4
    .line 5
    const-string v2, "sign"

    .line 6
    .line 7
    const-string v3, "UcmAgentService"

    .line 8
    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    const-string p1, "sign. property is null"

    .line 17
    .line 18
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string v4, "sign "

    .line 27
    .line 28
    const-string v5, ",uid: "

    .line 29
    .line 30
    invoke-static {v4, p1, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "callerUid"

    .line 35
    .line 36
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ", caller: "

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "data length "

    .line 67
    .line 68
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    array-length v4, p2

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v2, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x2

    .line 89
    :try_start_0
    const-string v6, "KNOX"

    .line 90
    .line 91
    iget-object v7, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 92
    .line 93
    invoke-static {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 98
    .line 99
    .line 100
    new-instance v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    .line 101
    .line 102
    const-string v8, "ownerUid"

    .line 103
    .line 104
    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    const-string v9, "resource"

    .line 109
    .line 110
    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    const-string v10, "extraArgs"

    .line 115
    .line 116
    invoke-virtual {p4, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, p1, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-nez p1, :cond_2

    .line 131
    .line 132
    const-string p1, "sign. getEntry null "

    .line 133
    .line 134
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_1

    .line 142
    .line 143
    const/16 p1, 0x8

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :cond_2
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-nez p1, :cond_4

    .line 162
    .line 163
    const-string p1, "sign. getPrivateKey null "

    .line 164
    .line 165
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_3

    .line 173
    .line 174
    const/16 p1, 0xa

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 187
    .line 188
    invoke-static {p3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Signature;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->setProperty(Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->update([B)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->sign()[B

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->getErrorStatus()I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .line 214
    .line 215
    return-object v2

    .line 216
    :catch_0
    move-exception p0

    .line 217
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 218
    .line 219
    .line 220
    const/4 p0, 0x3

    .line 221
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :catch_1
    move-exception p0

    .line 226
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :catch_2
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/security/SignatureException;->printStackTrace()V

    .line 235
    .line 236
    .line 237
    const/16 p0, 0x110

    .line 238
    .line 239
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :catch_3
    move-exception p0

    .line 244
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 245
    .line 246
    .line 247
    const/16 p0, 0x108

    .line 248
    .line 249
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catch_4
    move-exception p0

    .line 254
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    const/16 p0, 0x10d

    .line 258
    .line 259
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :catch_5
    move-exception p0

    .line 264
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 265
    .line 266
    .line 267
    const/16 p0, 0x105

    .line 268
    .line 269
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :catch_6
    move-exception p0

    .line 274
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 275
    .line 276
    .line 277
    const/16 p0, 0x10a

    .line 278
    .line 279
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :catch_7
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    .line 285
    .line 286
    .line 287
    const/16 p0, 0x109

    .line 288
    .line 289
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :catch_8
    move-exception p0

    .line 294
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    const/16 p0, 0x107

    .line 298
    .line 299
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :catch_9
    move-exception p0

    .line 304
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    :goto_2
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 311
    .line 312
    .line 313
    return-object v2

    .line 314
    :cond_5
    const-string p1, "sign. data is null"

    .line 315
    .line 316
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    return-object p0
.end method


# virtual methods
.method public abstract APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract changePinWithPassword(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract generateDek()Landroid/os/Bundle;
.end method

.method public abstract generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateWrappedDek()Landroid/os/Bundle;
.end method

.method public abstract getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
.end method

.method public abstract getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getDek()Landroid/os/Bundle;
.end method

.method public abstract getDetailErrorMessage(I)Ljava/lang/String;
.end method

.method public abstract getInfo()Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMaximumLength()Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMinimumLength()Landroid/os/Bundle;
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract getStatus()Landroid/os/Bundle;
.end method

.method public abstract initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract notifyChange(ILandroid/os/Bundle;)I
.end method

.method public final notifyCredentialStorageChanged()V
    .locals 1

    .line 1
    const-string p0, "UcmAgentService"

    .line 2
    .line 3
    const-string v0, "notifyCredentialStorageChanged "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;I)V

    .line 5
    .line 6
    .line 7
    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMaximumLength(I)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMinimumLength(I)Landroid/os/Bundle;
.end method

.method public abstract setState(I)Landroid/os/Bundle;
.end method

.method public abstract unwrapDek([B)Landroid/os/Bundle;
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method
