package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
final class MetadataManager {
    static final MetadataLoader DEFAULT_METADATA_LOADER = new MetadataLoader() { // from class: com.google.i18n.phonenumbers.MetadataManager.1
        @Override // com.google.i18n.phonenumbers.MetadataLoader
        public InputStream loadMetadata(String str) {
            return MetadataManager.class.getResourceAsStream(str);
        }
    };
    private static final Logger logger = Logger.getLogger(MetadataManager.class.getName());
    private static final ConcurrentHashMap<Integer, Phonemetadata$PhoneMetadata> alternateFormatsMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, Phonemetadata$PhoneMetadata> shortNumberMetadataMap = new ConcurrentHashMap<>();
    private static final Set<Integer> alternateFormatsCountryCodes = AlternateFormatsCountryCodeSet.getCountryCodeSet();
    private static final Set<String> shortNumberMetadataRegionCodes = ShortNumbersRegionCodeSet.getRegionCodeSet();

    private MetadataManager() {
    }

    static <T> Phonemetadata$PhoneMetadata getMetadataFromMultiFilePrefix(T t, ConcurrentHashMap<T, Phonemetadata$PhoneMetadata> concurrentHashMap, String str, MetadataLoader metadataLoader) {
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata = concurrentHashMap.get(t);
        if (phonemetadata$PhoneMetadata != null) {
            return phonemetadata$PhoneMetadata;
        }
        String str2 = str + "_" + t;
        List<Phonemetadata$PhoneMetadata> metadataFromSingleFileName = getMetadataFromSingleFileName(str2, metadataLoader);
        if (metadataFromSingleFileName.size() > 1) {
            logger.log(Level.WARNING, "more than one metadata in file " + str2);
        }
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata2 = metadataFromSingleFileName.get(0);
        Phonemetadata$PhoneMetadata putIfAbsent = concurrentHashMap.putIfAbsent(t, phonemetadata$PhoneMetadata2);
        return putIfAbsent != null ? putIfAbsent : phonemetadata$PhoneMetadata2;
    }

    private static List<Phonemetadata$PhoneMetadata> getMetadataFromSingleFileName(String str, MetadataLoader metadataLoader) {
        InputStream loadMetadata = metadataLoader.loadMetadata(str);
        if (loadMetadata == null) {
            throw new IllegalStateException("missing metadata: " + str);
        }
        List<Phonemetadata$PhoneMetadata> metadataList = loadMetadataAndCloseInput(loadMetadata).getMetadataList();
        if (metadataList.size() != 0) {
            return metadataList;
        }
        throw new IllegalStateException("empty metadata: " + str);
    }

    private static Phonemetadata$PhoneMetadataCollection loadMetadataAndCloseInput(InputStream inputStream) {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(inputStream);
            } catch (IOException e) {
                throw new RuntimeException("cannot load/parse metadata", e);
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Phonemetadata$PhoneMetadataCollection phonemetadata$PhoneMetadataCollection = new Phonemetadata$PhoneMetadataCollection();
            try {
                phonemetadata$PhoneMetadataCollection.readExternal(objectInputStream);
                try {
                    objectInputStream.close();
                } catch (IOException e2) {
                    logger.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e2);
                }
                return phonemetadata$PhoneMetadataCollection;
            } catch (IOException e3) {
                throw new RuntimeException("cannot load/parse metadata", e3);
            }
        } catch (Throwable th2) {
            th = th2;
            objectInputStream2 = objectInputStream;
            try {
                if (objectInputStream2 != null) {
                    objectInputStream2.close();
                } else {
                    inputStream.close();
                }
            } catch (IOException e4) {
                logger.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e4);
            }
            throw th;
        }
    }
}
