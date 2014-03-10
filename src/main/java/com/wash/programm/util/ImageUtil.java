package com.wash.programm.util;

import org.apache.commons.codec.binary.Base64;

import java.io.UnsupportedEncodingException;

public final class ImageUtil {

    public static final String ISO = "ISO-8859-2";

    /**
     * Encode byte picture to byte string ISO-8859-2
     *
     * @param picture byte array
     * @param ifNull  value will be returned if conversion fails
     * @return encoded string
     */
    public static String getEncoded(byte[] picture, String iso, String ifNull) {
        try {
            return new String(Base64.encodeBase64(picture), iso);
        } catch (UnsupportedEncodingException e) {
            return ifNull;
        }
    }
}
